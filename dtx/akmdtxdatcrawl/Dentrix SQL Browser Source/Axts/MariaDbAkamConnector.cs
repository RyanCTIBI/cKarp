using System;
using System.Linq;
using System.Data;
using System.Collections.Generic;
using System.ComponentModel;
using MySql.Data.MySqlClient;

namespace AxtsCMariaDBConnector
{
    /// <summary>
    /// Source http://lvasquez.github.io/2015/09/06/csharp-mariadb-mono/
    /// </summary>
    public class MariaDbAkamConnector
    {
        public string ServerName {  get; private set; }
        public string UserName { get; private set; }
        public string Password { get; private set; }
        public string DatabaseName { get; private set; }
        public string Port { get; set; }

        protected const int cTimeOut = 200;

        protected string cConnectionStringFormat =
            "Server={0};UID={1};PWD={2};Database={3};Port={4}";

        protected MySqlConnection cMariaDBConnection;
        

        public string GetConnectionString()
        {
            return string.Format(cConnectionStringFormat, ServerName, UserName, Password, DatabaseName, Port);
        }
        public MariaDbAkamConnector(string server, string userName, string password, string database, string port)
        {
            ServerName = server;
            UserName = userName;
            Password = password;
            DatabaseName = database;
            Port = port;
        }

        public void Execute(string cmdText, string[] entries)
        {
            Console.WriteLine(GetConnectionString());
            cMariaDBConnection = new MySqlConnection(GetConnectionString());
            cMariaDBConnection.Open();
            MySqlCommand cmd = new MySqlCommand();
            
            cmd.CommandText = cmdText;
            cmd.CommandTimeout = cTimeOut;
            cmd.Connection = cMariaDBConnection;

            MySqlDataReader reader = cmd.ExecuteReader();
            entries = new string[reader.FieldCount];
            
            while ((reader.Read()))
            {
                for (int idx = 0; idx < reader.FieldCount; idx++)
                {
                    entries[idx] = reader.GetString(idx);
                    // Console.Write(entries[idx] + Environment.NewLine);
                }
            }
            cMariaDBConnection.Close();

        }
        public static void Run()
        {

            try
            {
                // string connStr = "Server=AKAM-PC;User Id=root;Password=akamd6m6;Database=axtsdbm6d6";
                string connStr = "Server=127.0.0.1;UID=root;PWD=akamm6d6;Database=axtsdbm6d6;Port=3306";

                IList<AxtsTest> list = new List<AxtsTest>();

                using (var connec = new MySqlConnection(connStr))
                {
                    using (var comman = new MySqlCommand())
                    {
                        connec.Open();
                        comman.Connection = connec;
                        comman.CommandText = "select timestamp, msg from axts_test";
                        comman.CommandTimeout = 0;
                        MySqlDataReader reader = comman.ExecuteReader();

                        while ((reader.Read()))
                        {
                            AxtsTest ob = new AxtsTest();

                            ob.Timestamp = Convert.ToDateTime(reader["timestamp"]);
                            ob.Msg = Convert.ToString(reader["msg"]);
                            list.Add(ob);
                        }
                        connec.Close();
                    }
                }

                foreach (var c in list)
                {
                    Console.WriteLine(c.Timestamp + " - " + c.Msg);
                }

                Console.WriteLine("Success");
            }
            catch (Exception e)
            {
                Console.WriteLine("{0} Exception caught.", e);
            }

        }
    }


        public class AxtsTest
    {
            public DateTime Timestamp { get; set; }
            public string Msg { get; set; }
        }


    }
