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
    public partial class ResultViewer : UserControl
    {
        public ResultViewer()
        {
            InitializeComponent();
            SourceData = new DataSet();
        }
        private DataSet _sourceDataSet;
        public DataSet SourceData
        {
            get
            {
                return _sourceDataSet;
            }
            set
            {
                _sourceDataSet = value;
                if (_sourceDataSet == null)
                {
                    dataGridView1.DataSource = value;
                    comboBox1.Items.Clear();
                    comboBox1.Enabled = false;
                }
                else
                {
                    comboBox1.Items.Clear();
                    foreach(DataTable dt in _sourceDataSet.Tables)
                    {
                        comboBox1.Items.Add(dt.TableName);
                    }
                    if (comboBox1.Items.Count > 0)
                    {
                        comboBox1.SelectedIndex = 0;
                        comboBox1.Enabled = true;
                    }
                }
            }
        }

        private void comboBox1_SelectedValueChanged(object sender, EventArgs e)
        {
            if (comboBox1.SelectedItem != null && _sourceDataSet != null)
            {
                dataGridView1.DataSource = _sourceDataSet.Tables[comboBox1.SelectedItem.ToString()];
            }
        }
    }
}
