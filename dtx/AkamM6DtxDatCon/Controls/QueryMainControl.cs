using System;
using System.Data;
using System.Linq;
using System.Windows.Forms;
using Helpers;

namespace DtxSQLBrowser.Controls
{
    public partial class QueryMainControl : UserControl, IContentSerializable
    {
        private static char[] TrimUs = new char[] { '\n', ' ', '\r', '\f', '\v', '\t' };
        private NoAPIControl noAPIControl;
        private G6ApiControl g6APIControl;
        private G62PlusControl g62APIControl;

        public QueryMainControl()
        {
            InitializeComponent();
            InitAdditionalControls();
        }

        public ResultViewer Results
        {
            get;
            set;
        }

        private void InitAdditionalControls()
        {
            // 
            // noAPIControl
            // 
            this.noAPIControl = new DtxSQLBrowser.Controls.NoAPIControl();
            this.noAPIControl.Location = new System.Drawing.Point(3, 3);
            this.noAPIControl.MinimumSize = new System.Drawing.Size(552, 23);
            this.noAPIControl.Name = "noAPIControl";
            this.noAPIControl.ShowServerName = true;
            this.noAPIControl.Size = new System.Drawing.Size(671, 23);
            this.noAPIControl.TabIndex = 0;
            this.noAPIControl.Dock = DockStyle.Fill;

            // 
            // g6APIControl
            // 
            this.g6APIControl = new DtxSQLBrowser.Controls.G6ApiControl();
            this.g6APIControl.Location = new System.Drawing.Point(3, 3);
            this.g6APIControl.MinimumSize = new System.Drawing.Size(552, 23);
            this.g6APIControl.Name = "g6APIControl";
            this.g6APIControl.Size = new System.Drawing.Size(671, 23);
            this.g6APIControl.TabIndex = 0;
            this.g6APIControl.Dock = DockStyle.Fill;

            //
            // G62APIControl
            //
            this.g62APIControl = new G62PlusControl();
            this.g62APIControl.Location = new System.Drawing.Point(3, 3);
            this.g62APIControl.MinimumSize = new System.Drawing.Size(552, 23);
            this.g62APIControl.Name = "g62APIControl";
            this.g62APIControl.Size = new System.Drawing.Size(671, 23);
            this.g62APIControl.TabIndex = 0;
            this.g62APIControl.Dock = DockStyle.Fill;
        }

        private void QueryMainControl_Load(object sender, EventArgs e)
        {
            try
            {
                dtxVersionCombo.DataSource = Enum.GetValues(typeof(EDtxVersion));
                dtxVersionCombo.SelectedItem = HelperFunctions.GetDentrixVersion();

                readerTypeCombo.DataSource = Enum.GetValues(typeof(EDtxReaderType));
                readerTypeCombo.SelectedItem = EDtxReaderType.ReaderSafe;

                UpdatePanelContents();

                LoadContent();
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void dtxVersionCombo_SelectedValueChanged(object sender, System.EventArgs e)
        {
            UpdatePanelContents();
        }

        private void UpdatePanelContents()
        {
            splitContainer2.Panel1.Controls.Clear();
            switch ((EDtxVersion)dtxVersionCombo.SelectedItem)
            {
                default:
                case EDtxVersion.NoAPI:
                case EDtxVersion.DTXG5:
                    splitContainer2.Panel1.Controls.Add(noAPIControl);
                    break;
                case EDtxVersion.DTXG51:
                case EDtxVersion.DTXG52:
                case EDtxVersion.DTXG6:
                case EDtxVersion.DTXG61:
                    splitContainer2.Panel1.Controls.Add(g6APIControl);
                    break;

                case EDtxVersion.DTXG62:
                    splitContainer2.Panel1.Controls.Add(g62APIControl);
                    break;
            }
        }

        private IQueryControl GetQueryControl()
        {
            IQueryControl retv = null;
            foreach(Control c in splitContainer2.Panel1.Controls)
            {
                if (c is IQueryControl)
                {
                    retv = (IQueryControl)c;
                    break;
                }
            }
            return retv;
        }

        public bool SaveContent()
        {
            foreach(Control c in splitContainer2.Panel1.Controls)
            {
                if(c is IContentSerializable)
                {
                    (c as IContentSerializable).SaveContent();
                }
            }
            Properties.Settings.Default.DtxVersion = (int)(EDtxVersion)dtxVersionCombo.SelectedItem;
            SaveQueryInfo();
            return true;
        }

        private void SaveQueryInfo()
        {
            Properties.Settings.Default.QueryHistory = new System.Collections.Specialized.StringCollection();
            Properties.Settings.Default.QueryHistory.AddRange(queryHistoryLB.Items.Cast<string>().ToArray());
            Properties.Settings.Default.Save();
        }

        public bool LoadContent()
        {
            //Load for all internal controls as well
            dtxVersionCombo.SelectedItem = (EDtxVersion)Properties.Settings.Default.DtxVersion;
            foreach (Control c in splitContainer2.Panel1.Controls)
            {
                if (c is IContentSerializable)
                {
                    (c as IContentSerializable).LoadContent();
                }
            }
            if (Properties.Settings.Default.QueryHistory != null)
            {
                queryHistoryLB.Items.AddRange(Properties.Settings.Default.QueryHistory.Cast<string>().ToArray());
            }
            return true;
        }

        private void executeBtn_Click(object sender, EventArgs e)
        {
            executeQuery(setupQueryControl1.CommandText);
        }

        private void executeSelBtn_Click(object sender, EventArgs e)
        {
            executeQuery(setupQueryControl1.CommandSelText);
        }
        private void executeQuery(string cmd)
        {
            IQueryControl qc = GetQueryControl();
            if (qc == null)
            {
                MessageBox.Show("Not a valid query control available");
            }
            else
            {
                TimeSpan timer = new TimeSpan();
                try
                {
                    DataSet queryResults = qc.ExecuteQuery((EDtxReaderType)readerTypeCombo.SelectedItem, (int)timeout.Value, cmd, setupQueryControl1.Parameters, ref timer);
                    cmd = cmd.ToLower().TrimEnd(TrimUs);
                    if (queryHistoryLB.Items.Contains(cmd) == false)
                    {
                        queryHistoryLB.Items.Insert(0, cmd); //always insert as first
                    }
                    else //Item is already in list.  Move to first
                    {
                        queryHistoryLB.Items.Remove(cmd);
                        queryHistoryLB.Items.Insert(0, cmd);
                    }
                    SaveQueryInfo();
                    if(Results != null)
                    {
                        Results.SourceData = queryResults;
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                    MessageBox.Show(ex.Message + Environment.NewLine + ex.StackTrace);
                }
            }
        }

        private void closeBtn_Click(object sender, EventArgs e)
        {
            this.ParentForm.Close();
        }

        private void queryHistoryLB_DoubleClick(object sender, EventArgs e)
        {
            if(queryHistoryLB.SelectedItem != null)
            {
                setupQueryControl1.CommandText = ((string)queryHistoryLB.SelectedItem);
            }
        }

        private void clearHistoryBtn_Click(object sender, EventArgs e)
        {
            queryHistoryLB.Items.Clear();
        }

        public void QueryMainControl_KeyUp(object sender, KeyEventArgs e)
        {
            if(e.KeyCode == Keys.F5)
            {
                executeBtn_Click(sender, e);
            }
            else if (e.KeyCode == Keys.F6)
            {
                executeSelBtn_Click(sender, e);
            }
        }
    }
}
