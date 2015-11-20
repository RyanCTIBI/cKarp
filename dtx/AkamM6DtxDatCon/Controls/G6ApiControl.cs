using Helpers;
using System;
using System.ComponentModel;
using System.Data;
using System.Windows.Forms;

namespace DtxSQLBrowser.Controls
{
    public partial class G6ApiControl : UserControl, IContentSerializable, IQueryControl
    {
        private const string BrowserPrivateKey = "46897aldsanfjjmn§qop[poetopfg";
        public G6ApiControl()
        {
            InitializeComponent();
        }

        private void refreshBtn_Click(object sender, EventArgs e)
        {
            bool b = EncryptionRequired;
            enclbl.Visible = b;
            declbl.Visible = b;
            encryptTB.Visible = b;
            decryptTB.Visible = b;
        }
        
        [Browsable(false)]
        private bool EncryptionRequired
        {
            get
            {
                return HelperFunctions.EncryptionRequired;
            }
        }

        private void G6ApiControl_Load(object sender, EventArgs e)
        {
            refreshBtn_Click(null, null);
        }

        public bool SaveContent()
        {
            bool retv = false;
            try
            {
                //decryptkey
                if (string.IsNullOrWhiteSpace(decryptTB.Text))
                    Properties.Settings.Default.lastDecKey = decryptTB.Text;
                else
                    Properties.Settings.Default.lastDecKey = Crypto.EncryptStringAES(decryptTB.Text, BrowserPrivateKey);

                //enckey
                if (string.IsNullOrWhiteSpace(encryptTB.Text))
                    Properties.Settings.Default.lastEncKey = encryptTB.Text;
                else
                    Properties.Settings.Default.lastEncKey = Crypto.EncryptStringAES(encryptTB.Text, BrowserPrivateKey);

                //password
                if (string.IsNullOrWhiteSpace(passwordTB.Text))
                    Properties.Settings.Default.lastUserPassword = passwordTB.Text;
                else
                    Properties.Settings.Default.lastUserPassword = Crypto.EncryptStringAES(passwordTB.Text, BrowserPrivateKey);

                //Remaining fields
                Properties.Settings.Default.lastUserName = usernameTB.Text;
                Properties.Settings.Default.Save();
                retv = true;
            }
            catch(Exception e)
            {
                HelperFunctions.LogException(e);
            }
            return retv;
        }

        public bool LoadContent()
        {
            bool retv = false;
            try
            {
                if (!string.IsNullOrWhiteSpace(Properties.Settings.Default.lastUserPassword))
                    passwordTB.Text = Crypto.DecryptStringAES(Properties.Settings.Default.lastUserPassword, BrowserPrivateKey);
                if (!string.IsNullOrWhiteSpace(Properties.Settings.Default.lastEncKey))
                    encryptTB.Text = Crypto.DecryptStringAES(Properties.Settings.Default.lastEncKey, BrowserPrivateKey);
                if (!string.IsNullOrWhiteSpace(Properties.Settings.Default.lastDecKey))
                    decryptTB.Text = Crypto.DecryptStringAES(Properties.Settings.Default.lastDecKey, BrowserPrivateKey);
                usernameTB.Text = Properties.Settings.Default.lastUserName;
                retv = true;
            }
            catch (Exception e)
            {
                HelperFunctions.LogException(e);
            }
            return retv;
        }

        public DataSet ExecuteQuery(EDtxReaderType type, int timeout, string cmdText, ParamHelper[] paramList, ref TimeSpan span)
        {
            DataSet retv = new DataSet();

            if(string.IsNullOrWhiteSpace(usernameTB.Text))
            {
                MessageBox.Show("Username is required");
                return retv;
            }
            if (string.IsNullOrWhiteSpace(passwordTB.Text))
            {
                MessageBox.Show("Password is required");
                return retv;
            }
            if (EncryptionRequired)
            {
                if (string.IsNullOrWhiteSpace(encryptTB.Text))
                {
                    MessageBox.Show("EncryptionKey is required");
                    return retv;
                }
                if (string.IsNullOrWhiteSpace(decryptTB.Text))
                {
                    MessageBox.Show("DecryptionKey is required");
                    return retv;
                }
            }
            IDbConnection conn = QueryHelper.GetConnection(type, usernameTB.Text, passwordTB.Text, encryptTB.Text, decryptTB.Text);
            if (conn != null)
            {
                retv = QueryHelper.ExecuteSelect(type, timeout, conn, cmdText, paramList, ref span);
            }
            return retv;
        }
    }
}
