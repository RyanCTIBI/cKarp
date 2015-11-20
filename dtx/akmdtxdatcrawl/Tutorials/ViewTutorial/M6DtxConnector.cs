using System;
using System.Data.Odbc;
using System.Runtime.InteropServices;
using Microsoft.Win32;

namespace DtxAkamScript
{
    class M6DtxConnector
    {
        // ODBC declare connection, command and reader objects
        static OdbcConnection connection;
        static OdbcCommand command;
        static OdbcDataReader reader;

  /**************************************************************************************************************/
        // use the user name and password provided in the PartnerInformation.doc in the Partner Program Kit     
        // Make sure the c-treeACE ODBC Driver is available in the DataSources
        static String userName = "vscmLRed";
        static String password = "SPCPvsVna";
  /**************************************************************************************************************/

        /// <summary>
        /// Main()
        ///
        /// The main() function takes in the arguments and calls other functions to Display the records in a View"
        /// </summary>
        /// <param name="args"></param>
        static void Main()
        {

            Initialize2();
            // CallView();
            // DisplayRecords();
            // connection.Close();
            Console.Write("\nPress <ENTER> key to exit . . .");
            Console.ReadLine();
        }

        /// <summary>
        /// Initialize the database
        /// </summary>
        static void Initialize()
        {
            try
            {
                // initialize ODBCConnection object
                connection = new OdbcConnection();

                string currentDB = GetCurrentDB();
                string serverName = GetServerMachine();

                // use the user name and password provided in the PartnerInformation.doc in the Partner Program Kit     
                    // Make sure the c-treeACE ODBC Driver is available in the DataSources
                connection.ConnectionString = "UID=" + userName + ";PWD=" + password + ";Database=" + currentDB + ";host=" + serverName + ";DSN=c-treeACE ODBC Driver;port=6597";
                // initialize command object
                command = new OdbcCommand();
                command.CommandType = System.Data.CommandType.Text;
                command.Connection = connection;
                command.Transaction = null;

                // connect to server            
                connection.Open();
            }
            catch (Exception e)
            {
                ExceptionDisplay(e);
            }
        }

        static void Initialize2()
        {
            // User registration process

            Console.WriteLine("RegisterUser={0}", HelperFunctions.RegisterUser(M6.cKeyFile));

        }
        
        /// <summary>
        /// CallView:  This function executes the select command
        /// </summary>
        static void CallView()
        {

            try
            {
                // create table
                Console.WriteLine("\tCalling rx_list_view_pp...");
                command.CommandText = "select * from admin.v_rxlist";
                command.ExecuteNonQuery();

            }
            catch (Exception e)
            {
                ExceptionDisplay(e);
            }
        }

        /// <summary>
        /// DisplayRecords: This function displays the records in the view if any.
        /// </summary>
        static void DisplayRecords()
        {
            Console.Write("\tRecords in Prescirption list...");

            try
            {
                reader = (OdbcDataReader)command.ExecuteReader();
                // read the returned resultset
                while (reader.Read())
                {
                    /*
                     * This view consists the following fields:
                     * rxdef_id (TINYINT)
                     * drug_name (CHARACTER 50)
                     * description (CHARACTER 50)
                     * rx_date (DATE)
                     * For the purpose of keeping it simple, we are displaying the rxdef_id and drug_name on the console (the first two fields)
                     */
                    Console.WriteLine("\n\t\t{0}  {1}  ", reader.GetInt16(0), reader.GetString(1));
                }
                // close the reader
                reader.Close();
            }
            catch (Exception e)
            {
                ExceptionDisplay(e);
            }
        }


        /// <summary>
        /// ExceptionDisplay: This method displays the exceptions generated.
        /// </summary>
        /// <param name="e"></param>
        static void ExceptionDisplay(Exception e)
        {
            Console.WriteLine("Error: " + e.Message);
            Console.WriteLine("\nPress <ENTER> key to exit . . .");
            Console.ReadLine();
            Environment.Exit(1);
        }

        /// <summary>
        /// This method returns the database that is currently used.
        /// </summary>
        /// <returns></returns>
        static string GetCurrentDB()
        {
            /// call the dll that will return the current database.  
            /// [JB] will let us know when it is ready.
            return "DentrixSQL";
        }

        /// <summary>
        /// This method returns the server name that is currently used.
        /// </summary>
        /// <returns></returns>
        static string GetServerMachine()
        {
            /// call the dll that will return the current server machine.  
            /// [JB] will let us know when it is ready.
            string DENTRIX_SUBKEYPATH = @"\Software\Dentrix Dental Systems, Inc.\Dentrix\General";

            object objData = null;

            objData = Registry.GetValue(Registry.CurrentUser + DENTRIX_SUBKEYPATH, "ServerMachineName", "");
            if (objData == null || objData.Equals(""))
            {
                objData = Registry.GetValue(Registry.LocalMachine + DENTRIX_SUBKEYPATH, "ServerMachineName", "localhost");
                if (objData == null || objData.Equals(""))
                    objData = "localhost";
            }
            // return objData.ToString();
            return "Akam-PC";
        }
    }
}
