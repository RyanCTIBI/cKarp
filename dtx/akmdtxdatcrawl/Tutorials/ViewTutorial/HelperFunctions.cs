using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Win32;
using System.Diagnostics;
using System.Runtime.InteropServices;

using System.Security.Cryptography;

namespace DtxAkamScript
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



        public static int RegisterUser(string keyFilePath)
        {
            int retv = -1;
            try
            {
                retv = DENTRIXAPI_RegisterUser(keyFilePath);
            }
            catch (EntryPointNotFoundException e)
            {
                Console.WriteLine(e);
                Console.WriteLine("This function is only available in installations G6.2 and higher");
            }
            return retv;
        }
    }
}
