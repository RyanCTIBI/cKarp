using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AxtsCMariaDBConnector
{


    class Program
    {
        protected const string cUserName = "root";
        protected const string cPassword = "akamm6d6";
        protected const string cDatabase = "axtsdbm6d6";
        protected const string cServer = "127.0.0.1";
        protected const string cPort = "3306";

        static void Main(string[] args)
        {
            MariaDbAkamConnector connector = new MariaDbAkamConnector(cServer, cUserName, cPassword, cDatabase, cPort);

            string[] results = new string[] {};
            string cmdText = "select timestamp, msg from axts_test";
            connector.Execute(cmdText, results);

            foreach (string col in results)
            {
                Console.WriteLine(col);
            }

        }
    }
}
