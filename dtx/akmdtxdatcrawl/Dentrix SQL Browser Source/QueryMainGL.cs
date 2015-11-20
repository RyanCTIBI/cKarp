using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace DtxSQLBrowser
{
    public partial class QueryMainGL : Form
    {
        public QueryMainGL()
        {
            InitializeComponent();
            this.splitContainer1.Panel1MinSize = this.queryMainControl1.MinimumSize.Height;
            this.MinimumSize = new Size(1024, 600);
            this.queryMainControl1.Results = this.resultViewer1;
        }

        private void QueryMain_Load(object sender, EventArgs e)
        {
            this.StartPosition = FormStartPosition.WindowsDefaultBounds;

            if (Properties.Settings.Default.WindowPosition != Rectangle.Empty)
            {
                if (Properties.Settings.Default.WindowState != FormWindowState.Minimized)
                {
                    this.StartPosition = FormStartPosition.Manual;
                    this.DesktopBounds = Properties.Settings.Default.WindowPosition;
                    this.WindowState = Properties.Settings.Default.WindowState;
                }
                else
                {
                    this.StartPosition = FormStartPosition.CenterScreen;
                }
            }
            else
            {
                this.StartPosition = FormStartPosition.CenterScreen;
            }
        }

        private void QueryMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            queryMainControl1.SaveContent();
            if (this.WindowState == FormWindowState.Minimized)
            {
                Properties.Settings.Default.WindowState = FormWindowState.Normal;
                Properties.Settings.Default.WindowPosition = this.RestoreBounds;
            }
            else
            {
                Properties.Settings.Default.WindowState = this.WindowState;
                Properties.Settings.Default.WindowPosition = this.DesktopBounds;
            }
            Properties.Settings.Default.Save();
        }

        private void QueryMain_KeyUp(object sender, KeyEventArgs e)
        {
            queryMainControl1.QueryMainControl_KeyUp(sender, e);
        }
    }
}
