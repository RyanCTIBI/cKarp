using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Odbc;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Timers;
using Ctree.Data.SqlClient;

namespace DtxSQLBrowser.Helpers
{
    internal class CQueryHelper
    {
        private const string ConnStrBaseFormatter = "host={0};UID={1};PWD={2};Database={3};port=6597";
        private const string OdbcDSN = ";DSN=c-treeACE ODBC Driver";
        internal static string GetConnectionString(EDtxReaderType connType, string un, string pw, string server, EDatabase database)
        {
            string retv = string.Format(ConnStrBaseFormatter, server, un, pw, database.ToString());
            switch(connType)
            {
                case EDtxReaderType.Adapter:
                case EDtxReaderType.Reader:
                case EDtxReaderType.ReaderSafe:
                    retv += OdbcDSN;
                    break;
                default:
                    break;
            }
            return retv;
        }

        internal static string GetConnectionString(EDtxReaderType connType, string un, string pw, string enc, string dec)
        {
            string retv = string.Empty;
            try
            {
                //Debug.Assert(string.IsNullOrWhiteSpace(un), "UserName string must be supplied");
                //Debug.Assert(string.IsNullOrWhiteSpace(pw), "Password string must be supplied");
                StringBuilder connectionString = new StringBuilder(512);
                string tempStr = pw;
                if (HelperFunctions.EncryptionRequired)
                {
                    //Debug.Assert(string.IsNullOrWhiteSpace(enc), "Encryption string must be supplied");
                    //Debug.Assert(string.IsNullOrWhiteSpace(dec), "Decryption string must be supplied");
                    tempStr += DateTime.Now.ToString("yyyyMMdd");
                    tempStr = Crypto.EncryptStringAES(tempStr, enc);
                }
                lock (connectionString)
                {
                    switch (connType)
                    {
                        case EDtxReaderType.Adapter:
                        case EDtxReaderType.Reader:
                        case EDtxReaderType.ReaderSafe:
                            HelperFunctions.DENTRIXAPI_GetConnectionString(un, tempStr, connectionString, 512);
                            break;
                        case EDtxReaderType.FaircomAdapter:
                        case EDtxReaderType.FaircomReader:
                        case EDtxReaderType.FaircomReaderSafe:
                            HelperFunctions.DENTRIXAPI_GetFCConnectionString(un, tempStr, connectionString, 512);
                            break;
                    }
                }
                retv = connectionString.ToString().Trim();
                if (HelperFunctions.EncryptionRequired && retv.Length > 0)
                {
                    retv = Crypto.DecryptStringAES(retv, dec);
                }
            }
            catch (Exception e)
            {
                HelperFunctions.LogException(e);
            }
            return retv;
        }

        internal static IDbConnection GetConnectionObject(EDtxReaderType connType)
        {
            IDbConnection conn;
            switch (connType)
            {
                case EDtxReaderType.FaircomAdapter:
                case EDtxReaderType.FaircomReader:
                case EDtxReaderType.FaircomReaderSafe:
                    conn = new CtreeSqlConnection();
                    break;
                default:
                case EDtxReaderType.Adapter:
                case EDtxReaderType.Reader:
                case EDtxReaderType.ReaderSafe:
                    conn = new OdbcConnection();
                    break;
            }
            return conn;
        }

        internal static IDbConnection GetConnection(EDtxReaderType connType, string un, string pw, string server, EDatabase db)
        {
            IDbConnection conn = null;
            string connStr = GetConnectionString(connType, un, pw, server, db);
            if (string.IsNullOrWhiteSpace(connStr) == false)
            {
                conn = GetConnectionObject(connType);
                conn.ConnectionString = connStr;
            }
            return conn;
        }
        internal static IDbConnection GetConnection(EDtxReaderType connType, string un, string pw, string enc, string dec)
        {
            IDbConnection conn = null;
            string connStr = GetConnectionString(connType, un, pw, enc, dec);
            if (string.IsNullOrWhiteSpace(connStr) == false)
            {
                conn = GetConnectionObject(connType);
                conn.ConnectionString = connStr;
            }
            return conn;
        }

        private static bool EnsureConnectionOpen(IDbConnection conn)
        {
            bool retv = false;
            if(conn.State != ConnectionState.Open)
            {
                conn.Open();
                retv = true;
            }
            return retv;
        }

        internal static DataSet ExecuteSelect(EDtxReaderType connType, int timeout, IDbConnection conn, string cmdText, ParamHelper[] paramList, ref TimeSpan executionTime)
        {
            DateTime started = DateTime.Now;
            IDataReader reader = null;
            IDbCommand cmd = null;
            bool bConnOpenedHere = EnsureConnectionOpen(conn);
            IDbTransaction transaction = conn.BeginTransaction();
            DataSet retv = new DataSet();
            try
            {
                cmd = conn.CreateCommand();
                cmd.CommandTimeout = timeout;
                cmd.Transaction = transaction;
                cmd.CommandText = cmdText;
                DbType[] reqLenTypes = new DbType[] { DbType.AnsiString, DbType.AnsiStringFixedLength, DbType.String, DbType.StringFixedLength, DbType.Binary, DbType.Object, DbType.Xml };
                for (int i = 0; i < paramList.Length; i++)
                {
                    IDbDataParameter idb = cmd.CreateParameter();
                    cmd.Parameters.Add(BuildParameter(idb, paramList[i]));
                    if(reqLenTypes.Contains(idb.DbType))
                    {
                        if (idb is OdbcParameter)
                        {
                            (idb as OdbcParameter).Size = paramList[i].Size;
                        }
                        else if (idb is CtreeSqlParameter)
                        {
                            (idb as CtreeSqlParameter).Size = paramList[i].Size;
                        }
                    }
                }
                switch(connType)
                {
                    case EDtxReaderType.Adapter:
                    case EDtxReaderType.FaircomAdapter:
                        {
                            IDbDataAdapter adap = GetAdapter(connType, cmd);
                            retv.BeginInit();

                            //Since the FillSchema and Fill functions return the same instance of 'DataTable'
                            //There is probably a better way of doing this, but for sake of explination
                            //Read the db schema
                            bool bSchemaFound = false;
                            DataTable[] dta = adap.FillSchema(retv, SchemaType.Source);
                            DataTable clone = null;
                            if(dta.Length > 0)
                            {
                                bSchemaFound = true;
                                dta[0].TableName = "SchemaTable"; //Ensure the table is named 'SchemaTable'
                                retv.Tables.Remove(dta[0]); //Drop the table from the dataset
                                clone = dta[0].Clone(); //Clone the results
                                dta[0].TableName = "Table"; //Rename the datatable instance back to table
                            }
                            adap.Fill(retv); //Fill 'Table' with the actual results
                            if(bSchemaFound && clone != null)
                                retv.Tables.Add(clone); //Now add the 'schematable' back to the results
                            
                            retv.EndInit();
                            break;
                        }
                    default:
                        {
                            DataTable dt;
                            reader = cmd.ExecuteReader();
                            if (reader.FieldCount > 0)
                            {
                                retv.Tables.Add(dt = new DataTable("Table"));
                                retv.Tables.Add(reader.GetSchemaTable());
                                switch (connType)
                                {
                                    case EDtxReaderType.FaircomReader:
                                    case EDtxReaderType.Reader:
                                        {
                                            dt.Load(reader, LoadOption.OverwriteChanges);
                                        }
                                        break;
                                    case EDtxReaderType.FaircomReaderSafe:
                                    case EDtxReaderType.ReaderSafe:
                                    default:
                                        {

                                            bool columnsBuilt = false;
                                            while (reader.Read())
                                            {
                                                if (columnsBuilt == false)
                                                {
                                                    BuildColumnData(dt, reader);
                                                    columnsBuilt = true;
                                                }
                                                AddDataRow(dt, reader);
                                            }
                                        }
                                        break;

                                }
                            }
                            break;
                        }
                }
                transaction.Commit();
                executionTime = DateTime.Now - started;
                //Now update parameter inputs with their respective values
                for (int i = 0; i < paramList.Length; i++)
                {
                    IDbDataParameter p = (IDbDataParameter)cmd.Parameters[i];
                    if(p.Direction != ParameterDirection.Input)
                    {
                        paramList[i].OutValue = p.Value;
                    }
                }
            }
            catch(Exception e)
            {
                transaction.Rollback();
                executionTime = DateTime.Now - started;
                HelperFunctions.LogException(e, false);
                throw e;
            }
            finally
            {
                if(reader != null)
                {
                    if(!reader.IsClosed)
                        reader.Close();
                    reader.Dispose();
                }
                if(cmd != null)
                {
                    cmd.Dispose();
                }
                if(bConnOpenedHere)
                {
                    conn.Close();
                }
            }
            
            return retv;
        }

        /// <summary>
        /// Builds DataColumns according to reader
        /// </summary>
        /// <param name="table"></param>
        /// <param name="reader"></param>
        private static void BuildColumnData(DataTable table, IDataReader reader)
        {
            for (int i = 0; i < reader.FieldCount; i++)
            {
                DataColumn dc = new DataColumn();
                dc.ColumnName = reader.GetName(i);
                table.Columns.Add(dc);
            }
        }

        /// <summary>
        /// Add Data Row via Reader to Table
        /// </summary>
        /// <param name="table">Table in which the row should be added</param>
        /// <param name="reader">reader object with the particular row loaded and ready for read</param>
        private static void AddDataRow(DataTable table, IDataReader reader)
        {
            DataRow row = table.NewRow();
            for (int i = 0; i < reader.FieldCount; i++)
            {
                
                if (reader[i] != DBNull.Value)
                {
                    object o = reader[i];
                    if (o is byte[])
                    {
                        row[i] = HelperFunctions.ParseByteArrayToString((o as byte[]));
                    }
                    else
                    {
                        row[i] = o;
                    }
                }
            }
            table.Rows.Add(row);
        }

        private static IDbDataAdapter GetAdapter(EDtxReaderType connType, IDbCommand cmd)
        {
            IDbDataAdapter adapter = null;
            switch(connType)
                
            {
                case EDtxReaderType.FaircomAdapter:
                    adapter = new CtreeSqlDataAdapter(cmd as CtreeSqlCommand);
                    break;
                default:
                case EDtxReaderType.Adapter:
                    adapter = new OdbcDataAdapter(cmd as OdbcCommand);
                    break;
            }
            return adapter;
        }

        private static IDataParameter BuildParameter(IDataParameter dbDataParameter, ParamHelper dtxParam)
        {
            Debug.Assert(dbDataParameter != null, "DataParamter instance required");
            Debug.Assert(dtxParam != null, "DtxParam instance required.");

            dbDataParameter.Direction = dtxParam.Direction;
            dbDataParameter.ParameterName = dtxParam.Name;
            dbDataParameter.DbType = ConvertSystemTypeToDbType(dtxParam.Value.GetType());
            dbDataParameter.Value = dtxParam.Value;
            return dbDataParameter;
        }
        
        internal static DbType ConvertSystemTypeToDbType(Type t)
        {
            DbType returnValue;
            Type searchType = t;

            if (t.IsEnum == true)
                searchType = Enum.GetUnderlyingType(t);

            switch (searchType.ToString())
            {
                case "System.Decimal":
                    returnValue = System.Data.DbType.Decimal;
                    break;
                case "System.TimeSpan":
                    returnValue = System.Data.DbType.Time;
                    break;
                case "System.SByte":
                    returnValue = System.Data.DbType.SByte;
                    break;
                case "System.Byte":
                case "System.Char":
                    returnValue = System.Data.DbType.Byte;
                    break;
                case "System.Int16":
                    returnValue = System.Data.DbType.Int16;
                    break;
                case "System.Int32":
                    returnValue = System.Data.DbType.Int32;
                    break;
                case "System.DateTime":
                    returnValue = System.Data.DbType.DateTime;
                    break;
                case "System.Boolean":
                    returnValue = System.Data.DbType.Boolean;
                    break;
                case "System.Byte[]":
                    returnValue = System.Data.DbType.Binary;
                    break;
                case "System.Drawing.Image":
                    returnValue = System.Data.DbType.Binary;
                    break;
                default:
                    returnValue = System.Data.DbType.String;
                    break;
            }
            return returnValue;
        }
        
    }
}
