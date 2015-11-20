namespace DtxSQLBrowser.Controls
{
    partial class NoAPIControl
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.passwordTB = new System.Windows.Forms.TextBox();
            this.usernameTB = new System.Windows.Forms.TextBox();
            this.lable1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.serverNameTB = new System.Windows.Forms.TextBox();
            this.dbCombo = new System.Windows.Forms.ComboBox();
            this.tableLayoutPanel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.ColumnCount = 7;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 15.07565F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 12.69528F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 9.124732F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 11.70346F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 13.09201F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 23.18841F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 16.30435F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel1.Controls.Add(this.passwordTB, 5, 0);
            this.tableLayoutPanel1.Controls.Add(this.usernameTB, 3, 0);
            this.tableLayoutPanel1.Controls.Add(this.label2, 2, 0);
            this.tableLayoutPanel1.Controls.Add(this.label3, 4, 0);
            this.tableLayoutPanel1.Controls.Add(this.serverNameTB, 1, 0);
            this.tableLayoutPanel1.Controls.Add(this.dbCombo, 6, 0);
            this.tableLayoutPanel1.Controls.Add(this.lable1, 0, 0);
            this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 0);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 1;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(552, 23);
            this.tableLayoutPanel1.TabIndex = 0;
            // 
            // passwordTB
            // 
            this.passwordTB.Dock = System.Windows.Forms.DockStyle.Fill;
            this.passwordTB.Location = new System.Drawing.Point(334, 0);
            this.passwordTB.Margin = new System.Windows.Forms.Padding(0);
            this.passwordTB.Name = "passwordTB";
            this.passwordTB.Size = new System.Drawing.Size(126, 20);
            this.passwordTB.TabIndex = 5;
            // 
            // usernameTB
            // 
            this.usernameTB.Dock = System.Windows.Forms.DockStyle.Fill;
            this.usernameTB.Location = new System.Drawing.Point(200, 0);
            this.usernameTB.Margin = new System.Windows.Forms.Padding(0);
            this.usernameTB.Name = "usernameTB";
            this.usernameTB.Size = new System.Drawing.Size(63, 20);
            this.usernameTB.TabIndex = 4;
            // 
            // lable1
            // 
            this.lable1.AutoSize = true;
            this.lable1.Dock = System.Windows.Forms.DockStyle.Right;
            this.lable1.Location = new System.Drawing.Point(3, 0);
            this.lable1.Name = "lable1";
            this.lable1.Padding = new System.Windows.Forms.Padding(3);
            this.lable1.Size = new System.Drawing.Size(76, 23);
            this.lable1.TabIndex = 0;
            this.lable1.Text = "*ServerName";
            this.lable1.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.label2.Location = new System.Drawing.Point(154, 0);
            this.label2.Name = "label2";
            this.label2.Padding = new System.Windows.Forms.Padding(3);
            this.label2.Size = new System.Drawing.Size(43, 23);
            this.label2.TabIndex = 1;
            this.label2.Text = "*User:";
            this.label2.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.label3.Location = new System.Drawing.Point(266, 0);
            this.label3.Name = "label3";
            this.label3.Padding = new System.Windows.Forms.Padding(3);
            this.label3.Size = new System.Drawing.Size(65, 23);
            this.label3.TabIndex = 2;
            this.label3.Text = "*Password:";
            this.label3.TextAlign = System.Drawing.ContentAlignment.TopRight;
            // 
            // serverNameTB
            // 
            this.serverNameTB.Dock = System.Windows.Forms.DockStyle.Fill;
            this.serverNameTB.Location = new System.Drawing.Point(82, 0);
            this.serverNameTB.Margin = new System.Windows.Forms.Padding(0);
            this.serverNameTB.Name = "serverNameTB";
            this.serverNameTB.Size = new System.Drawing.Size(69, 20);
            this.serverNameTB.TabIndex = 3;
            // 
            // dbCombo
            // 
            this.dbCombo.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dbCombo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.dbCombo.FormattingEnabled = true;
            this.dbCombo.Items.AddRange(new object[] {
            "DentrixSQL",
            "TutorSQL"});
            this.dbCombo.Location = new System.Drawing.Point(460, 0);
            this.dbCombo.Margin = new System.Windows.Forms.Padding(0);
            this.dbCombo.Name = "dbCombo";
            this.dbCombo.Size = new System.Drawing.Size(92, 21);
            this.dbCombo.TabIndex = 6;
            // 
            // NoAPIControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.tableLayoutPanel1);
            this.MinimumSize = new System.Drawing.Size(552, 23);
            this.Name = "NoAPIControl";
            this.Size = new System.Drawing.Size(552, 23);
            this.tableLayoutPanel1.ResumeLayout(false);
            this.tableLayoutPanel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private System.Windows.Forms.TextBox passwordTB;
        private System.Windows.Forms.TextBox usernameTB;
        private System.Windows.Forms.Label lable1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox serverNameTB;
        private System.Windows.Forms.ComboBox dbCombo;
    }
}
