using DtxAkamScript.Helpers;
// using Helpers;
using System;
using System.Data;
using System.Data.Odbc;
using System.Text;
// using System.Windows.Forms;

namespace DtxAkamScript
{
    class DtxDataCrawler
    {
        private const string cBaseSqlDir = "E:\\Devs\\DentrixApp\\Akam\\SqlAXts\\";
        private const string cFileExt = "csv";

        private const string cKeyFile = "E:\\Devs\\DentrixApp\\DentrixCreds\\vscmLRed.dtxkey";
        private const string cUserName = "vscmLRed";
        private const string cPassword = "SPCPvsVna";
        private const int cTimeOut = 300;

        private const string cTableFileNames = "tables";
        private const string cStoredProcNames = "procs";

        private static string cConnectionString = string.Empty;
        // private static ParamHelper[] cParamList;

        private static string[] cTables = new string [] {
            "insured",
            "v_patient",
            "patient"
        };

        public static void Main()
        {
            Console.Clear();
            _GetEnvironment();
            _GetConnectionString();
            _ExecuteSampleExistingTables();
        }

        public static void _GetEnvironment()
        {
            Console.WriteLine("[Running Environment]");
            Console.WriteLine(Environment.OSVersion);
            Console.WriteLine(Environment.MachineName);
            Console.WriteLine(Environment.Is64BitOperatingSystem ? "64 bits" : "32 bits");
            Console.WriteLine(Environment.Is64BitProcess ? "64 bits process" : "32 bits process");
            Console.WriteLine("[Program Running...]");
            
        }
        public static void _ExecuteSelect(int timeout, IDbConnection conn, string cmdText, string tableName)
        {
            DateTime started = DateTime.Now;
            IDataReader reader = null;
            IDbCommand cmd = null;
            bool bConnOpenedHere = HelperFunctions.EnsureConnectionOpen(conn);
            IDbTransaction transaction = conn.BeginTransaction();
            // DataSet retv = new DataSet();
            try
            {
                cmd = conn.CreateCommand();
                cmd.CommandTimeout = timeout;
                cmd.Transaction = transaction;
                cmd.CommandText = cmdText;
                
                /*
                DbType[] reqLenTypes = new DbType[] { DbType.AnsiString, DbType.AnsiStringFixedLength, DbType.String, DbType.StringFixedLength, DbType.Binary, DbType.Object, DbType.Xml };
                for (int i = 0; i < paramList.Length; i++)
                {
                    IDbDataParameter idb = cmd.CreateParameter();
                    cmd.Parameters.Add(HelperFunctions.BuildParameter(idb, paramList[i]));
                    if (reqLenTypes.Contains(idb.DbType))
                    {
                        if (idb is OdbcParameter)
                        {
                            (idb as OdbcParameter).Size = paramList[i].Size;
                        }
                    }
                }
                
                */

                DataTable dt;
                reader = cmd.ExecuteReader();
                string retStr = string.Empty;
                
                if (reader.FieldCount > 0)
                {
                    dt = new DataTable(tableName);
                    // retv.Tables.Add(dt = new DataTable(tableName));
                    // retv.Tables.Add(reader.GetSchemaTable());
                    DataTable schemaTable = reader.GetSchemaTable();
                    Helpers.DataTableExtensions.WriteToCsvFile(schemaTable, string.Format("{0}{1}.{2}",cBaseSqlDir, tableName + "_schema", cFileExt));
                    CsvFileWriter csvFileWriter = new CsvFileWriter(string.Format("{0}{1}.{2}", cBaseSqlDir, tableName + "_data", cFileExt));
                    bool columnsBuilt = false;
                    while (reader.Read())
                    {
                        if (columnsBuilt == false)
                        {
                            HelperFunctions.BuildColumnData(dt, reader);
                            columnsBuilt = true;
                        }
                        // Old Function but Memory Exhausted
                        // HelperFunctions.AddDataRow(dt, reader);

                        // New Function write every row
                        CsvRow row = new CsvRow();
                        HelperFunctions.AddDataRowCSVWriter(row, reader);
                        csvFileWriter.WriteRow(row);

                    }
                    retStr += string.Format("Count:{0}=Columns:{1},Rows:{2}", tableName, reader.FieldCount, csvFileWriter.Length());
                    // Old Function
                    // Helpers.DataTableExtensions.WriteToCsvFile(dt, string.Format("{0}{1}.{2}", cBaseSqlDir, tableName + "_data", cFileExt));
                    // MessageBox.Show(retStr);

                    // New Function
                    csvFileWriter.Close();
                    Console.WriteLine(retStr);
                }
                transaction.Commit();
                /*
                for (int i = 0; i < paramList.Length; i++)
                {
                    IDbDataParameter p = (IDbDataParameter)cmd.Parameters[i];
                    if (p.Direction != ParameterDirection.Input)
                    {
                        paramList[i].OutValue = p.Value;
                    }
                }
                */
            }
            catch (Exception e)
            {
                transaction.Rollback();
                HelperFunctions.LogException(e, false);
                throw e;
            }
            finally
            {
                if (reader != null)
                {
                    if (!reader.IsClosed)
                        reader.Close();
                    reader.Dispose();
                }
                if (cmd != null)
                {
                    cmd.Dispose();
                }
                if (bConnOpenedHere)
                {
                    conn.Close();
                }
            }

            // return retv;
        }

        private static void _GetConnectionString()
        {
            string retStr = string.Empty;
            retStr = "@DtxAkamScript.DtxDataCrawler_.GetConnectionString" + Environment.NewLine;
            if (_RegisterUser() == 0)
            {
                StringBuilder conStr = new StringBuilder(512);

                lock (conStr)
                {
                    HelperFunctions.DENTRIXAPI_GetConnectionString(cUserName, cPassword, conStr, 512);
                    cConnectionString = conStr.ToString().Trim();
                    if (cConnectionString.Length > 0)
                        retStr += "Success" + Environment.NewLine;
                    retStr += string.Format("szConnectionsString:{0}", cConnectionString);
                    // MessageBox.Show(retStr);
                    Console.WriteLine(retStr);
                }

            }

        }
        private static int _RegisterUser()
        {
            string retStr = string.Empty;
            int retInt = -1;
            retStr = "@DtxAkamScript.DtxDataCrawler._RegisterUser" + Environment.NewLine;

            retInt = HelperFunctions.DENTRIXAPI_RegisterUser(cKeyFile);
            retStr += string.Format("RegisterUser:{0}", _DtxRegUser2Str(retInt));

            // MessageBox.Show(retStr);
            Console.WriteLine(retStr);
            return retInt;
        }

        /** See page 6, Authentication.pdf CGG*/
        private static string _DtxRegUser2Str(int ret)
        {
            string retStr = string.Empty;
            switch(ret)
            {
                case -1:
                    retStr = "General Failure to load local requirements";
                    break;
                case 0:
                    retStr = "Success";
                    break;
                case 1:
                    retStr = "User canceled Auth";
                    break;
                case 2:
                    retStr = "Invalid Auth request";
                    break;
                case 3:
                    retStr = "Invalid File Auth File";
                    break;
                case 4:
                    retStr = "Unable to connect to DB";
                    break;
                case 5:
                    retStr = "Local admin rights could not be secured";
                    break;
                case 6:
                    retStr = "User insertion failed";
                    break;
                case 7:
                    retStr = "User access has been revoked";
                    break;
                case 8:
                    retStr = "Invalid Certificate";
                    break;
            }

            return retStr;
        }

        /** See page 8, Authentication.pdf CGG */

        private static string _DtxGetCon2Str(int ret)
        {
            string retStr = string.Empty;
            switch (ret)
            {
                case -1:
                    retStr = "General Failure to load local requirements";
                    break;
                case 0:
                    retStr = "Success";
                    break;
            }

            return retStr;
        }

        private static void _ExecuteSampleExistingTables()
        {
            _ExecuteSelectAll("fullproclog");
            /*
            IDbConnection conn = new OdbcConnection();
            conn.ConnectionString = cConnectionString;
            string cmdText = string.Empty;

            
            // Good
            foreach(string tableName in cTables)
            {
                cmdText = string.Format("SELECT * from admin.{0}", tableName);
                MessageBox.Show(string.Format("Query:{0}", cmdText));
                try {
                    _ExecuteSelect(cTimeOut, conn, cmdText, tableName);
                } catch(Exception e)
                {
                    MessageBox.Show(e.ToString());
                    continue;
                }
            }
            

            // another query
            // cmdText = _GetTables();
            
            cmdText = _GetStoredProcs();


            // MessageBox.Show(string.Format("Query:{0}", cmdText));
            Console.WriteLine(string.Format("Query:{0}", cmdText));
            try { 
                _ExecuteSelect(cTimeOut, conn, cmdText, "procs");
            }
            catch (Exception e)
            {
                // MessageBox.Show(e.ToString());
                Console.WriteLine(e.ToString());
                
            }

            // HowToClass.ReadTest(string.Format("{0}{1}.{2}",cBaseSqlDir, "tables_data", cFileExt));

            // Query every table in Tables

            // CsvFileReader reader = new CsvFileReader(string.Format("{0}{1}.{2}", cBaseSqlDir, "tables_data", cFileExt));
            CsvFileReader reader = new CsvFileReader(string.Format("{0}{1}.{2}", cBaseSqlDir, "procs_data", cFileExt));
            CsvRow row = new CsvRow();
            bool isHeader = true;

            while (reader.ReadRow(row))
            {
                if (isHeader)
                {
                    isHeader = false;
                    continue;
                }

                string procName = string.Empty;
                foreach (string s in row)
                {
                    procName = s;
                    break;
                }
                // cmdText = string.Format("SELECT * FROM admin.{0}", tableName);
                cmdText = _GetProcInfo(procName);
                try
                {
                    Console.WriteLine(string.Format("Query:{0}", cmdText));
                    _ExecuteSelect(cTimeOut, conn, cmdText, procName);
                }
                catch (Exception e)
                {
                    // MessageBox.Show(e.ToString());
                    Console.WriteLine(e.ToString());
                    continue;
                }
            } 
            */

        }

        private static void _ExecuteSelectAll(string tableName)
        {
            IDbConnection conn = new OdbcConnection();
            conn.ConnectionString = cConnectionString;
            string cmdText = string.Empty;


            cmdText = string.Format("SELECT * from admin.{0}", tableName);
            Console.WriteLine(string.Format("Query:{0}", cmdText));
            try
            {
                _ExecuteSelect(cTimeOut, conn, cmdText, tableName);
            }
            catch (Exception e)
            {
                Console.WriteLine(e.ToString());
            }
        }

        private static string _GetTables()
        {
            string cmdText = string.Empty;
            cmdText = "SELECT distinct tbl " + Environment.NewLine +
            "FROM admin.systabauth" + Environment.NewLine +
            "WHERE sel IN ('g','y')" + Environment.NewLine +
            "AND grantee=(SELECT SUSER_NAME() from admin.syscalctable)" + Environment.NewLine +
            "ORDER BY tbl";
            return cmdText;
        }

        private static string _GetStoredProcs()
        {
            string cmdText = string.Empty;

            cmdText = "SELECT distinct proc.proc_name " + Environment.NewLine +
            "FROM admin.sysprocedures proc " + Environment.NewLine +
            "LEFT JOIN admin.systabauth auth ON auth.tbl = proc.proc_name " + Environment.NewLine +
            "WHERE proc.proc_type = 'stored' AND " + Environment.NewLine +
            "( " + Environment.NewLine +
                "(auth.exe = 'y' AND grantee=(SELECT SUSER_NAME() FROM admin.syscalctable)) " + Environment.NewLine +
                "OR " + Environment.NewLine +
                "(creator = (SELECT SUSER_NAME() FROM admin.syscalctable))" + Environment.NewLine +
            ")" + Environment.NewLine +
            "ORDER BY proc_name asc";
            return cmdText;
        }

        private static string _GetProcInfo(string procName)
        {
            string cmdText = string.Empty;

            cmdText =
                "SELECT distinct p.proc_name, pc.id, pc.col, pc.proc_id, pc.datatype, pc.argtype, pc.width, pc.scale " + Environment.NewLine +
                "FROM admin.sysproccolumns pc " + Environment.NewLine +
                "LEFT JOIN admin.sysprocedures p " + Environment.NewLine +
                "ON pc.proc_id = p.proc_id " + Environment.NewLine +
                "LEFT JOIN admin.systabauth a" + Environment.NewLine +
                "ON p.proc_name = a.tbl" + Environment.NewLine +
                "WHERE (" + Environment.NewLine +
                "(a.exe = 'y' AND grantee = (SELECT SUSER_NAME() FROM admin.syscalctable)) " + Environment.NewLine +
                "OR (creator = (SELECT SUSER_NAME() FROM admin.syscalctable))" + Environment.NewLine +
                ")" + Environment.NewLine +
                string.Format("AND p.proc_name LIKE '%{0}%'", procName) + Environment.NewLine +
                "ORDER BY proc_name, argtype, id";
            // Helpers.ParamHelper ph = new Helpers.ParamHelper();
            // ph.Direction = ParameterDirection.Input;
            // ph.Name = "Procedure";
            // ph.Value = procName;
            // cParamList = new Helpers.ParamHelper[] { ph };
            return cmdText;
        }

    }


    /**
     * SOMETHING IMPORTANT !!!
     *
     * # Signing
     *  >   signtool sign /f E:\Devs\DentrixApp\DentrixCreds\DDPCode.pfx /p BlR0nTNYXQ1LoJTAZ4d1 "E:\Devs\DentrixApp\Resources\DentrixSDK_2.2\Dentrix SQL Browser Source\obj\x86\Debug\AkamM6DtxDatCon.exe"  
     *  >   signtool sign /f E:\Devs\DentrixApp\DentrixCreds\DDPCode.pfx /p BlR0nTNYXQ1LoJTAZ4d1 AkamM6DtxDatCon.exe 
     *
     * # Database Passphrase
     *  >   !Cyrusmesa6dentrixg6db
     *
     * # Username
     *  >   vscmLRed
     *
     * # Password
     *  >   SPCPvsVna
     *
     * ## Dentrix Developer Program Account for: Mesasix, LLC
     * Dentrix Serial #: 084709-DGG32T83
     * Dentrix Activation Code: 1-45YDBJ 
     * Dentrix Customer #: 84709
     *
     * ## DDP Web Portal Credentials (www.dentrix.com/ddp)
     * Portal Username: matthew@mesasix.com
     * Portal Password: {XR>AV*d
     */

}
