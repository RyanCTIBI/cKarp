using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using DtxAkamScript.Helpers;
using Helpers;

namespace DtxSQLBrowser.Controls
{
    public partial class ParameterItem : UserControl
    {
        public event DeleteRequestHandler DeleteRequest;
        public ParameterItem()
        {
            InitializeComponent();
            paramDirectionCombo.DataSource = Enum.GetValues(typeof(ParameterDirection));
            paramTypeCombo.DataSource = Enum.GetValues(typeof(DbType));
        }
        
        private object GetParamValue()
        {
            object retv = DBNull.Value;
            if (paramTypeCombo.SelectedItem != null)
            {
                switch ((DbType)paramTypeCombo.SelectedItem)
                {
                    case DbType.Byte:
                    case DbType.SByte:
                        retv = Byte.Parse(paramValueTB.Text);
                        break;

                    case DbType.Int16:
                    case DbType.UInt16:
                        retv = Int16.Parse(paramValueTB.Text);
                        break;

                    case DbType.Int32:
                    case DbType.UInt32:
                    case DbType.VarNumeric:
                        retv = Int32.Parse(paramValueTB.Text);
                        break;

                    case DbType.Int64:
                    case DbType.UInt64:
                        retv = Int64.Parse(paramValueTB.Text);
                        break;

                    case DbType.Time:
                        retv = TimeSpan.Parse(paramValueTB.Text);
                        break;

                    case DbType.Date:
                    case DbType.DateTime:
                    case DbType.DateTime2:
                    case DbType.DateTimeOffset:
                        retv = DateTime.Parse(paramValueTB.Text);
                        break;

                    case DbType.Boolean:
                        retv = bool.Parse(paramValueTB.Text);
                        break;

                    case DbType.Binary:
                        retv = ParseBinaryString(paramValueTB.Text);
                        break;

                    case DbType.Single:
                        retv = float.Parse(paramValueTB.Text);
                        break;

                    case DbType.Double:
                    case DbType.Decimal:
                    case DbType.Currency:
                        retv = decimal.Parse(paramValueTB.Text);
                        break;

                    case DbType.Object:
                        var bytes = Convert.FromBase64String(paramValueTB.Text);
                        using (var ms = new MemoryStream(bytes, 0, bytes.Length))
                        {
                            Image image = Image.FromStream(ms, true);
                            retv = image;
                        }
                        break;

                    default:
                        retv = paramValueTB.Text;
                        break;
                }
            }
            return retv;
        }

        private byte[] ParseBinaryString(string input)
        {
            byte[] retv = new byte[]{};
            char[] trimMe = new char[]{'[',']'};
            input = input.TrimStart(trimMe).TrimEnd(trimMe);
            string[] values = input.Split(new char[] { ',' });
            if(values.Length > 0)
            {
                retv = new byte[values.Length];
                for (int i = 0; i < values.Length; i++)
                {
                    string bitString = values[i];
                    byte val = 0;
                    for (int b = 0; b <= 7; b++)
                    {
                        val |= (byte)((bitString[b] == '1' ? 1 : 0) << (7 - b));
                    }
                    retv[i] = val;
                }
            }
            return retv;
        }

        private void deleteBtn_Click(object sender, EventArgs e)
        {
            if (DeleteRequest != null)
                DeleteRequest(this, null);
        }

        public ParamHelper GetParamDetails()
        {
            ParamHelper ph = new ParamHelper();
            ph.Direction = ParameterDirection.Input;
            if (paramDirectionCombo.SelectedItem != null)
            {
                ph.Direction = (ParameterDirection)paramDirectionCombo.SelectedItem;

            }
            ph.Name = paramNameTB.Text;
            ph.Value = GetParamValue();
            ph.Size = (int)paramSize.Value;
            return ph;
        }

        internal void SetParamDetails(ParamHelper ph)
        {
            paramDirectionCombo.SelectedItem = ph.Direction;
            paramNameTB.Text = ph.Name;
            if(ph.Value is byte[])
            {
                byte[] ba = ph.Value as byte[];
                if (ba != null)
                {
                    string resultFmt = "[{0}]";
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < ba.Length; i++)
                    {
                        sb.Append(Convert.ToString(ba[i], 2).PadLeft(8, '0'));
                        if(i != ba.Length -1)
                        {
                            sb.Append(',');
                        }
                    }
                    paramValueTB.Text = string.Format(resultFmt, sb.ToString());
                }
            }
            else
                paramValueTB.Text = ph.Value.ToString();
            DbType type = Helpers.QueryHelper.ConvertSystemTypeToDbType(ph.Value.GetType());
            paramTypeCombo.SelectedItem = type;
        }
    }
}
