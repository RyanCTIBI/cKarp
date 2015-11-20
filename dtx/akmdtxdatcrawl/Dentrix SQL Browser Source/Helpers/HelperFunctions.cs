using System;
using System.Text;
using Microsoft.Win32;
using System.Diagnostics;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using System.Security.Cryptography;
using System.Data;
using DtxSQLBrowser;
using Helpers;

namespace DtxAkamScript.Helpers
{
    public class HelperFunctions
    {
        #region Dll Imports
        private const string DtxAPI = "Dentrix.API.dll";
        [DllImport(DtxAPI, CharSet = CharSet.Ansi, CallingConvention = CallingConvention.StdCall)]
        internal static extern int DENTRIXAPI_RegisterUser([MarshalAs(UnmanagedType.LPStr)]string szKeyFilePath); //G6.2 + available call

        [DllImport(DtxAPI, CharSet = CharSet.Ansi, CallingConvention = CallingConvention.StdCall)]
        internal static extern void DENTRIXAPI_GetConnectionString([MarshalAs(UnmanagedType.LPStr)]string szUserId, [MarshalAs(UnmanagedType.LPStr)]string szPassword, StringBuilder szConnectionsString, int ConnectionStringSize); //G5+ available

        [DllImport(DtxAPI, CharSet = CharSet.Ansi, CallingConvention = CallingConvention.StdCall)]
        internal static extern void DENTRIXAPI_GetFCConnectionString([MarshalAs(UnmanagedType.LPStr)]string szUserId, [MarshalAs(UnmanagedType.LPStr)]string szPassword, StringBuilder szConnectionsString, int ConnectionStringSize); //G5+ available

        [DllImport(DtxAPI, CharSet = CharSet.Ansi, CallingConvention = CallingConvention.StdCall)]
        internal static extern bool DENTRIXAPI_EncryptionRequired(); //Only used for G6/G61

        [DllImport(DtxAPI, CharSet = CharSet.Ansi, CallingConvention = CallingConvention.StdCall)]
        internal static extern float DENTRIXAPI_GetDentrixVersion(); //G5.1+ available
        #endregion

        #region Constants
        private const string DentrixBaseKey = @"Software\Dentrix Dental Systems, Inc.\Dentrix\";
        #endregion
        
        public static EDtxVersion GetDentrixVersion()
        {
            EDtxVersion retv = EDtxVersion.NoAPI;
            float ver = DENTRIXAPI_GetDentrixVersion();
            retv = (EDtxVersion)(int)(ver * 10);
            return retv;
        }

        public static string GetExePath()
        {
            return GetDtxRegistryString("General", "ExePath", (System.Environment.Is64BitOperatingSystem ? @"C:\Program Files (x86)\Dentrix\" : @"C:\Program Files\Dentrix\"));
        }

        public static string GetDtxRegistryString(string section, string value, string defaultValue)
        {
            string retv = ReadRegistry(false, DentrixBaseKey, section, value);
            if (string.IsNullOrWhiteSpace(retv))
                retv = ReadRegistry(true, DentrixBaseKey, section, value);
            if (string.IsNullOrWhiteSpace(retv))
            {
                retv = defaultValue;
            }
            return retv;
        }

        public static string ReadRegistry(bool bUseLocalMachine, string subKey, string section, string value)
        {
            string returnValue = null;

            string fullkey = System.IO.Path.Combine(subKey, section);

            RegistryKey key = null;
            if (bUseLocalMachine)
                key = RegistryKey.OpenBaseKey(Microsoft.Win32.RegistryHive.LocalMachine, RegistryView.Registry32).OpenSubKey(fullkey);
            else
                key = RegistryKey.OpenBaseKey(Microsoft.Win32.RegistryHive.CurrentUser, RegistryView.Registry32).OpenSubKey(fullkey);
            if (key != null)
            {

                returnValue = (string)key.GetValue(value);
                key.Close();
            }
            return returnValue;
        }

        public static string ParseByteArrayToString(Byte[] input)
        {
            StringBuilder retv = new StringBuilder();
            retv.Append("[");
            for (int i = 0; i < input.Length; i++)
            {
                if(i > 0)
                    retv.Append(',');
                retv.Append(Convert.ToString(input[i], 2).PadLeft(8, '0'));
            }
            retv.Append("]");
            return retv.ToString();
        }

        internal static void LogException(Exception e, bool show = true)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(e.Message + Environment.NewLine);
            sb.Append(e.StackTrace + Environment.NewLine);
            if(e.InnerException != null)
            {
                sb.Append("Inner Exception: " + Environment.NewLine);
                sb.Append(e.InnerException.Message + Environment.NewLine);
                sb.Append(e.InnerException.StackTrace);
            }
            System.Console.WriteLine(sb.ToString());
            if(show)
                MessageBox.Show(sb.ToString());
        }

        internal static int RegisterUser(string keyFilePath)
        {
            int retv = -1;
            try
            {
                retv = DENTRIXAPI_RegisterUser(keyFilePath);
            }
            catch(EntryPointNotFoundException e)
            {
                Console.WriteLine(e);
                MessageBox.Show("This function is only available in installations G6.2 and higher");
            }
            return retv;
        }


        public static string GetUniqueKey(int maxSize)
        {
            char[] chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".ToCharArray();
            byte[] data = new byte[1];
            using (RNGCryptoServiceProvider crypto = new RNGCryptoServiceProvider())
            {
                crypto.GetNonZeroBytes(data);
                data = new byte[maxSize];
                crypto.GetNonZeroBytes(data);
            }
            StringBuilder result = new StringBuilder(maxSize);
            foreach (byte b in data)
            {
                result.Append(chars[b % (chars.Length)]);
            }
            return result.ToString();
        }


        //////////////////////////////////////////
        /*** Start of Addition                  */
        /*** Copied from QueryHelper Tutorial   */
        /*** Modified by CGG                    */
        public static bool EnsureConnectionOpen(IDbConnection conn)
        {
            bool retv = false;
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
                retv = true;
            }
            return retv;
        }

        /// <summary>
        /// Builds DataColumns according to reader
        /// </summary>
        /// <param name="table"></param>
        /// <param name="reader"></param>
        public static string BuildColumnData(DataTable table, IDataReader reader)
        {
            string retStr = string.Empty;
            for (int i = 0; i < reader.FieldCount; i++)
            {
                if (i != 0)
                    retStr += ";";

                DataColumn dc = new DataColumn();
                dc.ColumnName = reader.GetName(i);
                table.Columns.Add(dc);
                retStr += reader.GetName(i);
            }
            return retStr;
        }

        /// <summary>
        /// Add Data Row via Reader to Table
        /// </summary>
        /// <param name="table">Table in which the row should be added</param>
        /// <param name="reader">reader object with the particular row loaded and ready for read</param>
        public static string AddDataRow(DataTable table, IDataReader reader)
        {
            string retStr = string.Empty;
            DataRow row = table.NewRow();
            for (int i = 0; i < reader.FieldCount; i++)
            {
                // the last item needs a separator
                if (i != 0)
                    retStr += ";";

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
                    retStr += row[i].ToString();
                }


            }
            table.Rows.Add(row);
            return retStr;
        }

        public static void AddDataRowCSVWriter(CsvRow csvRow, IDataReader reader)
        {
            string retStr = string.Empty;
            string rowData = string.Empty;
            for (int i = 0; i < reader.FieldCount; i++)
            {
                // the last item needs a separator
                if (i != 0)
                    retStr += ";";

                if (reader[i] != DBNull.Value)
                {
                    object o = reader[i];
                    if (o is byte[])
                    {
                        // row[i] = HelperFunctions.ParseByteArrayToString((o as byte[]));
                        rowData = HelperFunctions.ParseByteArrayToString((o as byte[])).ToString();
                        // csvRow.Add(HelperFunctions.ParseByteArrayToString((o as byte[])).ToString());
                    }
                    else
                    {
                        // row[i] = o;
                        rowData = o.ToString();
                        // csvRow.Add(o.ToString());
                    }
                    retStr += rowData;
                    csvRow.Add(rowData);
                    
                }


            }
            // csvRow.Add(table.Rows.Add(row);
            // return retStr;
        }


        public static IDataParameter BuildParameter(IDataParameter dbDataParameter, ParamHelper dtxParam)
        {
            // Debug.Assert(dbDataParameter != null, "DataParamter instance required");
            // Debug.Assert(dtxParam != null, "DtxParam instance required.");

            dbDataParameter.Direction = dtxParam.Direction;
            dbDataParameter.ParameterName = dtxParam.Name;
            dbDataParameter.DbType = ConvertSystemTypeToDbType(dtxParam.Value.GetType());
            dbDataParameter.Value = dtxParam.Value;
            return dbDataParameter;
        }


        public static DbType ConvertSystemTypeToDbType(Type t)
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

        //////////////////////////////////////////
        /*** END of Addition                  */
        /*** Copied from QueryHelper Tutorial   */
        /*** Modified by CGG                    */


        private static bool? encryptionFunctionAvailable = null;
        internal static bool EncryptionRequired
        {
            get
            {
                bool retv = false;
                if(encryptionFunctionAvailable == null)
                {
                    try
                    {
                        retv = DENTRIXAPI_EncryptionRequired();
                    }
                    catch(EntryPointNotFoundException e)
                    {
                        LogException(e, false);
                    }
                }
                return retv;
            }
        }
    }

    public delegate void DeleteRequestHandler(object sender,EventArgs e);
}