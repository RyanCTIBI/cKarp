using System;
using System.IO;
using ReadWriteCsv;

namespace AkmDtxSqlScriptGen
{
    public class SqlScriptGen
    {
        // temporary values for data storage
        public const string cDataHomePath = @"E:\Devs\aKam\CSharp\dtx\akmdtxgen\akmdat\";
        public const string cScriptHomePath = @"E:\Devs\aKam\CSharp\dtx\akmdtxgen\akmsqlscripts\";

        public const string cCsvFileExt = "csv";
        public const string cSqlFileExt = "sql";

        public const string cSqlCreateTblScriptFile = "aKmDtxMySqlCreate";
        public const string cSqlInsertScriptFile = "aKmDtxMySqlInsert";

        public const string cDataPostfix = "data";
        public const string cSchemaPostfix = "schema";

        public static void kToSqlInsert(string tblsFile, string sqlFile = cSqlInsertScriptFile)
        {
            string tSqlFile = string.Format("{0}{1}.{2}", cScriptHomePath, sqlFile, cSqlFileExt);

            // Console.WriteLine(string.Format("Creating {0} . . .", tSqlFile));

            string tCsvFile = string.Format("{0}{1}_{2}.{3}", cDataHomePath, tblsFile, cDataPostfix, cCsvFileExt);
            CsvFileReader reader = new CsvFileReader(tCsvFile);

            Console.WriteLine(string.Format("Opening {0} . . .", tCsvFile));
            Console.WriteLine("[Press the ENTER key to begin . . .]");
            Console.ReadKey();

            CsvRow row = new CsvRow();
            bool isHeader = true;

            while (reader.ReadRow(row))
            {
                if (isHeader)
                {
                    isHeader = false;
                    continue;
                }

                foreach (string tblName in row)
                {
                    string tTblDataFile = string.Format("{0}_{1}.{2}", tblName, cDataPostfix, cCsvFileExt);

                    try
                    {
                        SqlScriptTrans.kToSqlInsertTable(tTblDataFile, string.Format("{0}{1}", cDataHomePath, tTblDataFile));
                    }
                    catch (FileNotFoundException)
                    {
                        Console.WriteLine("[ERROR::" + tblName + "]Reading a non-existent physical database table.");
                        continue;
                    }
                }
            }
            reader.Close();
        }

    
        public static void kToSqlCreateTable(string tblsFile, string sqlFile = cSqlCreateTblScriptFile)
        {
            string tSqlFile = string.Format("{0}k{1}.{2}", cScriptHomePath, sqlFile, cSqlFileExt);

            SqlScriptLogger scriptLogger = new SqlScriptLogger(tSqlFile);
            scriptLogger.kWriteLine("USE akm_m6dtx;" + Environment.NewLine);
            Console.WriteLine(string.Format("Creating {0} . . .", tSqlFile));

            string tCsvFile = string.Format("{0}{1}_{2}.{3}", cDataHomePath, tblsFile, cDataPostfix, cCsvFileExt);
            CsvFileReader reader = new CsvFileReader(tCsvFile);


            Console.WriteLine(string.Format("Opening {0} . . .", tCsvFile));
            Console.WriteLine("[Press the ENTER key to begin . . .]");
            Console.ReadKey();

            CsvRow row = new CsvRow();

            bool isHeader = true;
            while (reader.ReadRow(row))
            {
                if (isHeader)
                {
                    isHeader = false;
                    continue;
                }
                foreach (string tblSchema in row)
                {
                    string script = string.Empty;
                    try
                    {
                        string tTblSchemaFile = string.Format("{0}_{1}", tblSchema, cSchemaPostfix);

                        scriptLogger.kWriteLineHeader(tblSchema);
                        scriptLogger.kWriteLine(2);
                        scriptLogger.kWriteLine(SqlScriptTrans.kToSqlCreateTable(tTblSchemaFile, string.Format("{0}{1}.{2}", cDataHomePath, tTblSchemaFile, cCsvFileExt)));
                        scriptLogger.kWriteLine(2);
                        scriptLogger.kWriteLineFooter();

                    }
                    catch (FileNotFoundException)
                    {
                        scriptLogger.kWriteLine("## [ERROR::" + tblSchema + "] The table does not exists in the database.");
                        continue;
                    }
                    scriptLogger.kWriteLine(4);

                }
            }
            reader.Close();
            scriptLogger.kClose();
        }
    }
}
