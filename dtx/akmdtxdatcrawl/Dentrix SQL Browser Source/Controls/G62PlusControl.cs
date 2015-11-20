using Helpers;
using System;
using System.Data;
using System.Windows.Forms;

namespace DtxSQLBrowser.Controls
{
    public partial class G62PlusControl : UserControl, IQueryControl, IContentSerializable
    {
        public G62PlusControl()
        {
            InitializeComponent();
        }

        private void browseBtn_Click(object sender, EventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();
            ofd.Multiselect = false;
            ofd.CheckFileExists = true;
            if(ofd.ShowDialog() == DialogResult.OK)
            {
                keyFileTB.Text = ofd.FileName;
            }
        }

        public bool SaveContent()
        {
            Properties.Settings.Default.KeyFilePath = keyFileTB.Text;
            return true;
        }

        public bool LoadContent()
        {
            if (System.IO.File.Exists(Properties.Settings.Default.KeyFilePath))
                keyFileTB.Text = Properties.Settings.Default.KeyFilePath;
            return true;
        }

        public DataSet ExecuteQuery(EDtxReaderType type, int timeout, string cmdText, Helpers.ParamHelper[] paramList, ref TimeSpan span)
        {
            DataSet retv = new DataSet();
            try
            {
                //Technically you only need to register once, but as a showcase of what one would do, here is a quick example.
                int retcode = Helpers.HelperFunctions.RegisterUser(keyFileTB.Text); 
                returnCodeTB.Text = retcode.ToString();
                if(retcode == 0)
                {
                    IDbConnection conn = QueryHelper.GetConnection(type, HelperFunctions.GetUniqueKey(10), HelperFunctions.GetUniqueKey(20), string.Empty, string.Empty);
                    if (conn != null)
                    {
                        retv = QueryHelper.ExecuteSelect(type, timeout, conn, cmdText, paramList, ref span);
                    }
                    else
                    {
                        MessageBox.Show("Unable to build connection object");
                    }
                }
            }
            catch(Exception e)
            {
                MessageBox.Show("Execute Query Failed with an unknown error: " + e.Message + Environment.NewLine + e.StackTrace);
                Console.WriteLine(e);
            }
            return retv;
        }
    }
}
