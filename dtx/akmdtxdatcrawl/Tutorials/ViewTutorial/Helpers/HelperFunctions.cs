using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Win32;
using System.Diagnostics;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using System.Security.Cryptography;

namespace Helpers
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
