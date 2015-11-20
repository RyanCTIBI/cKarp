using System;
using System.Linq;
using System.Data;
using System.Collections.Generic;
using System.ComponentModel;
using MySql.Data.MySqlClient;
using ReadWriteCsv;

namespace AkmDbConnector
{
    /// <summary>
    /// Source http://lvasquez.github.io/2015/09/06/csharp-mariadb-mono/
    /// </summary>
    public class DbConnector
    {
        protected const string cUserName = "root";
        protected const string cPassword = "akamm6d6";
        protected const string cDatabase = "axtsdbm6d6";
        protected const string cServer = "127.0.0.1";
        protected const string cPort = "3306";

        public string ServerName { get; private set; }
        public string UserName { get; private set; }
        public string Password { get; private set; }
        public string DatabaseName { get; private set; }
        public string Port { get; set; }

        protected const int cTimeOut = 200;

        public static string cConnectionStringFormat = "Server={0};UID={1};PWD={2};Database={3};Port={4}";

        protected MySqlConnection cDbConnection;

        public DbConnector(string server, string userName, string password, string database, string port)
        {
            ServerName = server;
            UserName = userName;
            Password = password;
            DatabaseName = database;
            Port = port;
        }

        public string kGetConnectionString()
        {
            return string.Format(cConnectionStringFormat, ServerName, UserName, Password, DatabaseName, Port);
        }


        public void kExecuteCmd(string cmdText, string[] entries)
        {
            cDbConnection = new MySqlConnection(kGetConnectionString());
            cDbConnection.Open();

            MySqlCommand cmd = new MySqlCommand();
            cmd.CommandText = cmdText;
            cmd.CommandTimeout = cTimeOut;
            cmd.Connection = cDbConnection;

            MySqlDataReader reader = cmd.ExecuteReader();
            entries = new string[reader.FieldCount];

            while ((reader.Read()))
            {
                for (int idx = 0; idx < reader.FieldCount; idx++)
                {
                    // Whatever you want with the data, do it here.
                    entries[idx] = reader.GetString(idx);
                }
            }
            cDbConnection.Close();
        }

        public static void kDemoRun(string server = cServer, string userName = cUserName, string passWord = cPassword, string dbName = cDatabase,  string port = cPort)
        {
            try
            {
                string connStr = string.Format(cConnectionStringFormat, server, userName, passWord, dbName, port);


                IList<AkmTest> list = new List<AkmTest>();

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
                            AkmTest ob = new AkmTest();

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


    public class AkmTest
    {
        public DateTime Timestamp { get; set; }
        public string Msg { get; set; }
    }
}
