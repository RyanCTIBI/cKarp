/*
 StoredProcTutorial.cs

In this tutorial we will access the function calls in the  dll provided by Faircom to communicate with the database.  
This tutorial will accomplish the following tasks using ADO.NET/C# and .NET ODBC.  
1.  Logon onto a session
2.  Call a Stored procedure
3.  Display the contents of the stored procedure.
 * 
 * YOU WILL NEED TO ALTER THE TUTORIAL BELOW TO MAKE IT WORK WITH YOUR STORED PROCEDURES.

  To compile this file correctly, you need to make sure the System.Data is added to the References of this project.
*/

using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Win32;
using System.Data.Odbc;
using System.Data;
using System.Data.SqlClient;
using System.Runtime.InteropServices;

namespace StoredProcTutorial
{
    class TutorialSP
    {

        // Ctree declare connection, command and reader objects
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
            Initialize();
            CallView();
            DisplayRecords();
            connection.Close();
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
                // initialize CtreeSqlConnection object
                connection = new OdbcConnection();

                string currentDB = GetCurrentDB();
                string serverName = GetServerMachine();

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

        /// <summary>
        /// CallView:  This function executes the select command
        /// </summary>
        static void CallView()
        {

            try
            {

                Console.WriteLine("\tCalling getpatientbalance_pp stored procedure for patient with patid 3...");
                command.CommandText = "call admin.sp_getpatientbalance(3)";

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
            Console.Write("\tRecord in getpatientbalance stored procedure");

            try
            {
                reader = (OdbcDataReader)command.ExecuteReader();
                // read the returned resultset
                while (reader.Read())
                {
                    /*
                     * This view consists the following fields:
                     * pat_id
                     * pat_0_30_days
                     * pat_31_60_days
                     * pat_61_90_days
                     * pat_91_120_days
                     * pat_121_plus_days
                     * last_pmt_date
                     * last_pmt_amt
                     * last_pmt_type
                     * last_pmt_desc
                     */
                    Console.WriteLine("\npat_id:{0}\npat_0_30_days: {1}\npat_31_60_days: {2} \npat_61_90_days: {3}\npat_91_120_plus_days: {4} \npat_121_plus_days: {5}\nlast_pmt_date: {6} \nlast_pmt_amt: {7}\nlast_pmt_type: {8}\nlast_pmt_desc: {9}",
                        reader.GetValue(0), reader.GetValue(1), reader.GetValue(2), reader.GetValue(3), reader.GetValue(4), reader.GetValue(5), reader.GetValue(6), reader.GetValue(7), reader.GetValue(8), reader.GetValue(9));
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
            return objData.ToString();
        }
    }
}

