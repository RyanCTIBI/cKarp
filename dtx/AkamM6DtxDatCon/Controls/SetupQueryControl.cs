using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace DtxSQLBrowser.Controls
{
    public partial class SetupQueryControl : UserControl, IQueryBuilder
    {
        public SetupQueryControl()
        {
            InitializeComponent();
            checkBox1.DataBindings.Add(new Binding("Checked", queryTextTB, "WordWrap"));
        }

        public string CommandText
        {
            get
            {
                return queryTextTB.Text;
            }
            set
            {
                queryTextTB.Text = value;
            }
        }

        public string CommandSelText
        {
            get
            {
                return queryTextTB.SelectedText;
            }
        }

        public Helpers.ParamHelper[] Parameters
        {
            get { return parameterBuilder1.GetParams(); }
            set { parameterBuilder1.SetParams(value); }
        }

        private void getTablesBtn_Click(object sender, EventArgs e)
        {
            CommandText = "SELECT distinct tbl " + Environment.NewLine +
            "FROM admin.systabauth" + Environment.NewLine +
            "WHERE sel IN ('g','y')" + Environment.NewLine +
            "AND grantee=(SELECT SUSER_NAME() from admin.syscalctable)" + Environment.NewLine +
            "ORDER BY tbl";
        }

        private void getProcsBtn_Click(object sender, EventArgs e)
        {
            CommandText = "SELECT distinct proc.proc_name " +Environment.NewLine +
            "FROM admin.sysprocedures proc " + Environment.NewLine + 
            "LEFT JOIN admin.systabauth auth ON auth.tbl = proc.proc_name " + Environment.NewLine + 
            "WHERE proc.proc_type = 'stored' AND " + Environment.NewLine +
            "( " + Environment.NewLine + 
                "(auth.exe = 'y' AND grantee=(SELECT SUSER_NAME() FROM admin.syscalctable)) " + Environment.NewLine +
                "OR " + Environment.NewLine +
                "(creator = (SELECT SUSER_NAME() FROM admin.syscalctable))" + Environment.NewLine +
            ")" + Environment.NewLine +
            "ORDER BY proc_name asc";
        }

        private void getProcedureInfoBtn_Click(object sender, EventArgs e)
        {
            CommandText =
                "SELECT distinct p.proc_name, pc.id, pc.col, pc.proc_id, pc.datatype, pc.argtype, pc.width, pc.scale " + Environment.NewLine +
                "FROM admin.sysproccolumns pc " + Environment.NewLine +
                "LEFT JOIN admin.sysprocedures p " + Environment.NewLine +
                "ON pc.proc_id = p.proc_id " + Environment.NewLine +
                "LEFT JOIN admin.systabauth a" + Environment.NewLine +
                "ON p.proc_name = a.tbl" + Environment.NewLine +
                "WHERE (" + Environment.NewLine +
                "(a.exe = 'y' AND grantee = (SELECT SUSER_NAME() FROM admin.syscalctable)) " + Environment.NewLine +
                "OR (creator = (SELECT SUSER_NAME() FROM admin.syscalctable))" + Environment.NewLine +
                ")" + Environment.NewLine +
                "AND p.proc_name LIKE ?" + Environment.NewLine +
                "ORDER BY proc_name, argtype, id";
            Helpers.ParamHelper ph = new Helpers.ParamHelper();
            ph.Direction = ParameterDirection.Input;
            ph.Name = "Procedure";
            ph.Value = "%ProcNameHere%";
            parameterBuilder1.SetParams(new Helpers.ParamHelper[] { ph });
        }
    }
}
