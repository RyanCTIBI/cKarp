
/**
 * Originally from:  http://stackoverflow.com/questions/4959722/c-sharp-datatable-to-csv
 * Modified by CGG
 */

using System.Data;
using System.Text;

namespace DtxAkamScript.Helpers
{
    public static class DataTableExtensions
    {
        public static void WriteToCsvFile(this DataTable dataTable, string filePath)
        {
            CsvFileWriter writer = new CsvFileWriter(filePath);
            StringBuilder fileContent = new StringBuilder();

            CsvRow row = new CsvRow();
            foreach (var col in dataTable.Columns)
                row.Add(col.ToString());
            writer.WriteRow(row);

            foreach (DataRow dr in dataTable.Rows)
            {
                row = new CsvRow();

                foreach (var column in dr.ItemArray)
                {
                    row.Add(column.ToString());
                }

                writer.WriteRow(row);
            }
            writer.Close();
            dataTable = null;
            System.Console.WriteLine(string.Format("Done writing to {0}.", filePath));
        }
    
        public static void WriteToCsvFileOrig(this DataTable dataTable, string filePath)
        {
            StringBuilder fileContent = new StringBuilder();

            foreach (var col in dataTable.Columns)
            {
                fileContent.Append(col.ToString() + ",");
            }

            fileContent.Replace(",", System.Environment.NewLine, fileContent.Length - 1, 1);



            foreach (DataRow dr in dataTable.Rows)
            {

                foreach (var column in dr.ItemArray)
                {
                    fileContent.Append("\"" + column.ToString() + "\",");
                }

                fileContent.Replace(",", System.Environment.NewLine, fileContent.Length - 1, 1);
            }

            System.IO.File.WriteAllText(filePath, fileContent.ToString());

        }
    }
}