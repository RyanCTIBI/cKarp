using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AkmDtxSqlScriptGen
{
    class SqlScriptGenDriver
    {
        static void Main(string[] args)
        {
            Console.Clear();
            Console.WriteLine("[Generating Sql Insert Scripts]");

            // To generate insert for a table data
            GenerateSqlInsert("tables");

            // To generate create table for a table schema
            // GenerateSqlCreateTable("tables");
        }

        public static void GenerateSqlInsert(string csvTablesFileName)
        {
            SqlScriptGen.kToSqlInsert(csvTablesFileName);
        }

        public static void GenerateSqlCreateTable(string csvTablesFileName)
        {
            SqlScriptGen.kToSqlCreateTable(csvTablesFileName);
        }

    }
}
