using System;
using System.IO;
using System.Text.RegularExpressions;
using ReadWriteCsv;


namespace AkmDtxSqlScriptGen
{
    public class SqlScriptTrans
    {
        public static void kToSqlInsertTable (string tblFileName, string csvFilePath)
        {
            string cmdText = string.Empty;
            using (CsvFileReader reader = new CsvFileReader(csvFilePath))
            {
                CsvRow row = new CsvRow();
                bool isHeader = true;
                string tTblName = tblFileName.Substring(0, tblFileName.LastIndexOf("_data"));
                string tblFilePath = string.Format("{0}k{1}.{2}", SqlScriptGen.cScriptHomePath, tTblName, SqlScriptGen.cSqlFileExt);
                SqlScriptLogger scriptLogger = new SqlScriptLogger(tblFilePath);


                scriptLogger.kWriteLine("USE akm_m6dtx;" + Environment.NewLine);
                scriptLogger.kWriteLineHeader(tblFileName);
                scriptLogger.kWriteLine(2);

                cmdText = string.Format("INSERT INTO {0} (", tTblName) + Environment.NewLine;
                while (reader.ReadRow(row))
                {
                    string insertCmd = string.Empty;

                    /**
                     * Filter the columns of the table and translate to its template header script.
                     */
                    if (isHeader)
                    {
                        isHeader = false;

                        row.ForEach(col => { cmdText += string.Format("`{0}`,", col); });

                        cmdText = cmdText.Remove(cmdText.LastIndexOf(","), 1);
                        cmdText += ") VALUES (" + Environment.NewLine;
                    }
                    else
                    {
                        insertCmd = cmdText;
                        foreach (string col in row)
                        {
                            // TODO: Improve filtering by using Regex
                            if ((col.IndexOf("AM") > 0 || col.IndexOf("PM") > 0) &&
                                col.IndexOf(@"/") > 0 && 
                                col.IndexOf(@":") > 0)
                            {
                                insertCmd += string.Format(@"STR_TO_DATE('{0}', '%m/%d/%Y %l:%i:%s %p'),", col);
                            }
                            else
                                insertCmd += string.Format("\t'{0}',", col.Replace('\'', '^')) + Environment.NewLine;
                            

                        }
                        insertCmd = insertCmd.Remove(insertCmd.LastIndexOf(","), 1);
                        insertCmd += Environment.NewLine + ");";

                        Console.Write("c o d i n g . . .    t r a n s c o d i n g   . . .  t r a n s    . . . . .   ");
                        scriptLogger.kWriteLine(insertCmd);
                        Console.WriteLine("DONE !!!");

                    }
                }
                scriptLogger.kWriteLine(2);
                scriptLogger.kWriteLineFooter();
                scriptLogger.kClose();

                reader.Close();                
            }
        }
    
        public static string kToSqlCreateTable(string tblFileName, string csvFilePath)
        {
            string cmdText = string.Empty;

            using (CsvFileReader reader = new CsvFileReader(csvFilePath))
            {
                CsvRow row = new CsvRow();
                bool isHeader = true;
                string tTblFile = tblFileName.Substring(0, tblFileName.IndexOf("_"));

                Console.WriteLine("c o d i n g . . .    t r a n s c o d i n g   . . .  t r a n s    . . . . .   ");

                cmdText += string.Format("DROP TABLE IF EXISTS `{0}`;", tTblFile) + Environment.NewLine;
                cmdText += string.Format("CREATE TABLE IF NOT EXISTS `{0}` (", tTblFile) + Environment.NewLine;
                while (reader.ReadRow(row))
                {
                    if (isHeader)
                    {
                        isHeader = false;
                        continue;
                    }
                    string tRowType = kToMySQLTypeStatement(row);
                    cmdText += "\t" +  (tRowType.Equals(",") ? "" : tRowType)  + Environment.NewLine;

                }
                cmdText = cmdText.Remove(cmdText.LastIndexOf(","), 1);
                cmdText += ") ENGINE=InnoDB DEFAULT CHARSET=utf8;" + Environment.NewLine;

                Console.WriteLine(cmdText);
                Console.WriteLine("DONE !!!");
                reader.Close();
            }
            return cmdText;
        }

        /// <summary>
        /// The filePath here is an absolute path. It includes the complete path directory.
        /// We only need the fileName with extension, so we dropped the directory.
        /// </summary>
        /// <param name="filePath"></param>
        /// <param name="type"></param>
        /// <returns></returns>
        public static string kGetFileName(string filePath, string type)
        {
            string fileName = filePath.Substring(filePath.LastIndexOf("\\") + 1);
            fileName = fileName.Substring(0, fileName.IndexOf(type) - 1);

            return fileName;
        }


        /// <summary>
        /// The data conversion table is based from this URI Source: http://www.programering.com/a/MjN3gjMwATU.html 
        /// 
        /// // TODO Improve by using class constants.
        /// </summary>
        /// <param name="row"></param>
        /// <returns></returns>
        public static string kToMySQLTypeStatement(CsvRow row)
        {
            string retStr = string.Empty;

            if (row[(int) DtxTblCol.DataType].Equals("System.String"))
                retStr = string.Format("`{0}` VARCHAR({1}) {2} {3} {4}", row[(int) DtxTblCol.ColumnName], row[(int) DtxTblCol.ColumnSize], row[(int) DtxTblCol.AllowDbNull].Equals("True") ? "NULL" : "NOT NULL", row[(int)DtxTblCol.IsAutoIncrement].Equals("TRUE") ? "AUTO_INCREMENT" : string.Empty, row[(int)DtxTblCol.IsKey].Equals("TRUE") ? "PRIMARY KEY" : string.Empty);
            else if (row[(int)DtxTblCol.DataType].Equals("System.Int32"))
                retStr = string.Format("`{0}` INT {1} {2} {3}", row[(int) DtxTblCol.ColumnName], row[(int) DtxTblCol.AllowDbNull].Equals("True") ? "NULL" : "NOT NULL", row[(int) DtxTblCol.IsAutoIncrement].Equals("TRUE") ? "AUTO_INCREMENT" : string.Empty, row[(int)DtxTblCol.IsKey].Equals("TRUE") ? "PRIMARY KEY" : string.Empty);
            else if (row[(int) DtxTblCol.DataType].Equals("System.Int16"))
                retStr = string.Format("`{0}` SMALLINT {1} {2} {3}", row[(int) DtxTblCol.ColumnName], row[(int) DtxTblCol.AllowDbNull].Equals("True") ? "NULL" : "NOT NULL", row[(int) DtxTblCol.IsAutoIncrement].Equals("TRUE") ? "AUTO_INCREMENT" : string.Empty, row[(int)DtxTblCol.IsKey].Equals("TRUE") ? "PRIMARY KEY" : string.Empty);
            else if (row[(int) DtxTblCol.DataType].Equals("System.DateTime"))
                retStr = string.Format("`{0}` DATETIME {1} {2} {3}", row[(int) DtxTblCol.ColumnName], row[(int) DtxTblCol.AllowDbNull].Equals("True") ? "NULL" : "NOT NULL", row[(int) DtxTblCol.IsAutoIncrement].Equals("TRUE") ? "AUTO_INCREMENT" : string.Empty, row[(int)DtxTblCol.IsKey].Equals("TRUE") ? "PRIMARY KEY" : string.Empty);
            else if (row[(int) DtxTblCol.DataType].Equals("System.Decimal"))
                retStr = string.Format("`{0}` DECIMAL {1} {2} {3}", row[(int) DtxTblCol.ColumnName], row[(int) DtxTblCol.AllowDbNull].Equals("True") ? "NULL" : "NOT NULL", row[(int) DtxTblCol.IsAutoIncrement].Equals("TRUE") ? "AUTO_INCREMENT" : string.Empty, row[(int)DtxTblCol.IsKey].Equals("TRUE") ? "PRIMARY KEY" : string.Empty);
            else if (row[(int) DtxTblCol.DataType].Equals("System.Boolean"))
                retStr = string.Format("`{0}` BOOL {1} {2} {3}", row[(int) DtxTblCol.ColumnName], row[(int) DtxTblCol.AllowDbNull].Equals("True") ? "NULL" : "NOT NULL", row[(int) DtxTblCol.IsAutoIncrement].Equals("TRUE") ? "AUTO_INCREMENT" : string.Empty, row[(int)DtxTblCol.IsKey].Equals("TRUE") ? "PRIMARY KEY" : string.Empty);
            else if (row[(int) DtxTblCol.DataType].Equals("System.Byte[]"))
                retStr = string.Format("`{0}` BLOB {1} {2} {3}", row[(int) DtxTblCol.ColumnName], row[(int) DtxTblCol.AllowDbNull].Equals("True") ? "NULL" : "NOT NULL", row[(int) DtxTblCol.IsAutoIncrement].Equals("TRUE") ? "AUTO_INCREMENT" : string.Empty, row[(int)DtxTblCol.IsKey].Equals("TRUE") ? "PRIMARY KEY" : string.Empty);

            retStr = retStr.Trim().Length > 0 ? retStr.TrimEnd() + "," : retStr + ",";
            return retStr;
        }

    }

}
 