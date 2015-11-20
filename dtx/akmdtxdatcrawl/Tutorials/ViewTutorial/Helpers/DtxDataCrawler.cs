using DtxSQLBrowser;
using DtxSQLBrowser.Helpers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;

namespace DtxAkamScript
{
    class DtxDataCrawler
    {
        private static string retCode;

        private const string cKeyFile = "E:\\Devs\\DentrixApp\\DentrixCreds\\vscmLRed.dtxkey";
        private const string cUserName = "vscmLRed";
        private const string cPassword = "SPCPvsVna";

        // private const string[] cTables = new string [] {"insured","v_patient","patient"};

        public static void Main()
        {
            //_InitDtx();
            //_QuerySampleExistingTables();
            //_DisplayResults();
            ExecuteQuery(EDtxReaderType.ReaderSafe, 200, "select * from v_patient");

        }
        
        private static void _InitDtx()
        {

        }

        private static void _QuerySampleExistingTables()
        {

        }

        private static void _DisplayResults()
        {

        }

        private static DataSet ExecuteQuery(EDtxReaderType type, int timeout, string cmdText)
        {
            DataSet retv = new DataSet();
            try
            {
                //Technically you only need to register once, but as a showcase of what one would do, here is a quick example.
                int retcode = DtxSQLBrowser.Helpers.HelperFunctions.RegisterUser(cKeyFile);
                DtxDataCrawler.retCode = retcode.ToString();
                if (retcode == 0)
                {
                    IDbConnection conn = QueryHelper.GetConnection(type, HelperFunctions.GetUniqueKey(10), HelperFunctions.GetUniqueKey(20), string.Empty, string.Empty);
                    if (conn != null)
                    {
                        retv = QueryHelper.ExecuteSelect(type, timeout, conn, cmdText, null, null);
                    }
                    else
                    {
                        Console.WriteLine("Unable to build connection object");
                    }
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Execute Query Failed with an unknown error: " + e.Message + Environment.NewLine + e.StackTrace);
            }
            return retv;
        }

    }

    
    /**
     * SOMETHING IMPORTANT !!!
     *
     * # Signing
     *  >   signtool sign /f E:\Devs\DentrixApp\DentrixCreds\DDPCode.pfx /p BlR0nTNYXQ1LoJTAZ4d1 "E:\Devs\DentrixApp\Resources\DentrixSDK_2.2\Dentrix SQL Browser Source\obj\x86\Debug\DtxSQLBrowser.exe"  
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
