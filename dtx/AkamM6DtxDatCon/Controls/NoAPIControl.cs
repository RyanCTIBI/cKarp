using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Helpers;
using DtxAkamScript.Helpers;

namespace DtxSQLBrowser.Controls
{
    public partial class NoAPIControl : UserControl, IContentSerializable, IQueryControl
    {
        private const string BrowserPrivateKey = "46897aldsanfjjmn§qop[poetopfg";
        public NoAPIControl()
        {
            InitializeComponent();
            dbCombo.SelectedIndex = 0;
        }

        public bool SaveContent()
        {
            bool retv = false;
            try
            {
                Properties.Settings.Default.lastServerName = this.serverNameTB.Text;
                Properties.Settings.Default.lastUserName = this.usernameTB.Text;
                if (string.IsNullOrWhiteSpace(passwordTB.Text))
                    Properties.Settings.Default.lastUserPassword = passwordTB.Text;
                else
                    Properties.Settings.Default.lastUserPassword = Crypto.EncryptStringAES(passwordTB.Text, BrowserPrivateKey);
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
                this.serverNameTB.Text = Properties.Settings.Default.lastServerName;
                this.usernameTB.Text = Properties.Settings.Default.lastUserName;
                if (string.IsNullOrWhiteSpace(Properties.Settings.Default.lastUserPassword) == false)
                    this.passwordTB.Text = Crypto.DecryptStringAES(Properties.Settings.Default.lastUserPassword, BrowserPrivateKey);
                retv = true;
            }
            catch(Exception e)
            {
               HelperFunctions.LogException(e);
            }
            return retv;
        }

        public bool ShowServerName
        {
            get
            {
                return this.lable1.Visible;
            }
            set
            {
                this.lable1.Visible = value;
                this.serverNameTB.Visible = value;
            }
        }
        public DataSet ExecuteQuery(EDtxReaderType type, int timeout, string cmdText, ParamHelper[] paramList, ref TimeSpan span)
        {
            DataSet retv = new DataSet();
            IDbConnection conn = QueryHelper.GetConnection(type, usernameTB.Text, passwordTB.Text, serverNameTB.Text, (EDatabase)dbCombo.SelectedIndex);
            if (conn != null)
            {    
                retv = QueryHelper.ExecuteSelect(type, timeout, conn, cmdText, paramList, ref span);
            }
            return retv;
        }
    }
}
