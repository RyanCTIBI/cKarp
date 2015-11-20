using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Helpers;

namespace DtxSQLBrowser.Controls
{
    public partial class ParameterBuilder : UserControl
    {
        internal ParamHelper[] GetParams()
        {
            List<ParamHelper> paramList = new List<ParamHelper>();
            foreach (Control c in this.flowPanel.Controls)
            {
                if (c is ParameterItem)
                {
                    ParameterItem pi = c as ParameterItem;
                    paramList.Add(pi.GetParamDetails());
                }
            }
            return paramList.ToArray();
        }

        internal void SetParams(ParamHelper[] value)
        {
            clearParamsBtn_Click(null, null);
            foreach(ParamHelper ph in value)
            {
                ParameterItem pi = BuildNewParam();
                pi.SetParamDetails( ph);
            }
        }

        private ParameterItem BuildNewParam()
        {
            ParameterItem addMe = new ParameterItem();
            addMe.DeleteRequest += DeleteRequestFromParam;
            this.flowPanel.Controls.Add(addMe);
            return addMe;
        }

        #region Local Methods
        public ParameterBuilder()
        {
            InitializeComponent();
        }

        private void DeleteRequestFromParam(object sender, EventArgs e)
        {
            if (sender is Control)
            {
                DeleteEventLink(sender as Control);
                this.flowPanel.Controls.Remove(sender as Control);
            }
        }

        private void DeleteEventLink(Control c)
        {
            if (c is ParameterItem)
            {
                ParameterItem pi = c as ParameterItem;
                pi.DeleteRequest -= DeleteRequestFromParam;
            }
        }
        #endregion

        #region Event Handlers
        private void addParamBtn_Click(object sender, EventArgs e)
        {
            BuildNewParam();
        }

        private void clearParamsBtn_Click(object sender, EventArgs e)
        {
            foreach(Control c in this.flowPanel.Controls)
            {
                DeleteEventLink(c);
                c.Dispose();
            }
            this.flowPanel.Controls.Clear();
        }
        #endregion

        
    }
}
