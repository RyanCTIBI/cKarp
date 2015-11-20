using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AkmDtxSqlScriptGen
{
    class SqlScriptLogger
    {
        protected string cFileName;
        protected TextWriter cTw;
        protected string cTitle = string.Empty;

        public SqlScriptLogger(string fileName)
        {
            cTw = new StreamWriter(fileName);
            cFileName = fileName;
        }

        public void kWriteLineError(string errorMsg)
        {
            cTw.WriteLine("[ERROR::" + cFileName + "]\t" + errorMsg);
        }

        public void kWriteLine(string script)
        {
            cTw.WriteLine(script);
        }
        public string kGetTimeStamp(string timeStampFormat = "d/M/yyyy HH:mm:ss")
        {
            return string.Format("{0:d / M / yyyy HH: mm:ss}", DateTime.Now);
        }

        public void kClose()
        {
            cTw.Close();
        }

        public void kWriteLine(int n = 1)
        {
            while (n-- > 0)
                cTw.WriteLine();
        }

        public void kWriteLineHeader(string title)
        {
            if (string.IsNullOrEmpty(title))
                title = cFileName;

            cTw.WriteLine("###################################################################");
            cTw.WriteLine("###    " + title + " - aKm Apps Apos . . . aKm Apps Apos  ####");
            cTw.WriteLine("###################################################################");
            cTw.WriteLine(string.Format("### tiK! {0}", kGetTimeStamp()));
        }

        public void kWriteLineFooter()
        {
            cTw.WriteLine(string.Format("##### toK! {0}", kGetTimeStamp()));
            cTw.WriteLine("###################################################################");
            cTw.WriteLine("###aKm Apps Apos . . . aKm Apps Apos  - " + cFileName.Substring(cFileName.LastIndexOf("\\") + 1) + "  ####");
            cTw.WriteLine("###################################################################");

        }

    }
}