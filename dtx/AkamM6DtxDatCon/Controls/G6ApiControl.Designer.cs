namespace DtxSQLBrowser.Controls
{
    partial class G6ApiControl
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
            this.declbl = new System.Windows.Forms.Label();
            this.enclbl = new System.Windows.Forms.Label();
            this.passwordTB = new System.Windows.Forms.TextBox();
            this.usernameTB = new System.Windows.Forms.TextBox();
            this.unlbl = new System.Windows.Forms.Label();
            this.pwlbl = new System.Windows.Forms.Label();
            this.encryptTB = new System.Windows.Forms.TextBox();
            this.decryptTB = new System.Windows.Forms.TextBox();
            this.refreshBtn = new System.Windows.Forms.Button();
            this.tableLayoutPanel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.ColumnCount = 4;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 17.93478F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 30.07246F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 19.56522F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 32.78986F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel1.Controls.Add(this.declbl, 2, 1);
            this.tableLayoutPanel1.Controls.Add(this.enclbl, 0, 1);
            this.tableLayoutPanel1.Controls.Add(this.passwordTB, 3, 0);
            this.tableLayoutPanel1.Controls.Add(this.usernameTB, 1, 0);
            this.tableLayoutPanel1.Controls.Add(this.unlbl, 0, 0);
            this.tableLayoutPanel1.Controls.Add(this.pwlbl, 2, 0);
            this.tableLayoutPanel1.Controls.Add(this.encryptTB, 1, 1);
            this.tableLayoutPanel1.Controls.Add(this.decryptTB, 3, 1);
            this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 0);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 2;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(477, 49);
            this.tableLayoutPanel1.TabIndex = 1;
            // 
            // declbl
            // 
            this.declbl.AutoSize = true;
            this.declbl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.declbl.Location = new System.Drawing.Point(230, 24);
            this.declbl.Name = "declbl";
            this.declbl.Size = new System.Drawing.Size(86, 25);
            this.declbl.TabIndex = 7;
            this.declbl.Text = "*DecryptKey";
            this.declbl.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // enclbl
            // 
            this.enclbl.AutoSize = true;
            this.enclbl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.enclbl.Location = new System.Drawing.Point(3, 24);
            this.enclbl.Name = "enclbl";
            this.enclbl.Size = new System.Drawing.Size(79, 25);
            this.enclbl.TabIndex = 6;
            this.enclbl.Text = "*EncryptionKey:";
            this.enclbl.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // passwordTB
            // 
            this.passwordTB.Dock = System.Windows.Forms.DockStyle.Fill;
            this.passwordTB.Location = new System.Drawing.Point(319, 0);
            this.passwordTB.Margin = new System.Windows.Forms.Padding(0);
            this.passwordTB.Name = "passwordTB";
            this.passwordTB.Size = new System.Drawing.Size(158, 20);
            this.passwordTB.TabIndex = 5;
            // 
            // usernameTB
            // 
            this.usernameTB.Dock = System.Windows.Forms.DockStyle.Fill;
            this.usernameTB.Location = new System.Drawing.Point(85, 0);
            this.usernameTB.Margin = new System.Windows.Forms.Padding(0);
            this.usernameTB.Name = "usernameTB";
            this.usernameTB.Size = new System.Drawing.Size(142, 20);
            this.usernameTB.TabIndex = 4;
            // 
            // unlbl
            // 
            this.unlbl.AutoSize = true;
            this.unlbl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.unlbl.Location = new System.Drawing.Point(3, 0);
            this.unlbl.Name = "unlbl";
            this.unlbl.Size = new System.Drawing.Size(79, 24);
            this.unlbl.TabIndex = 1;
            this.unlbl.Text = "*UserName:";
            this.unlbl.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // pwlbl
            // 
            this.pwlbl.AutoSize = true;
            this.pwlbl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pwlbl.Location = new System.Drawing.Point(230, 0);
            this.pwlbl.Name = "pwlbl";
            this.pwlbl.Size = new System.Drawing.Size(86, 24);
            this.pwlbl.TabIndex = 2;
            this.pwlbl.Text = "*Password:";
            this.pwlbl.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // encryptTB
            // 
            this.encryptTB.Dock = System.Windows.Forms.DockStyle.Fill;
            this.encryptTB.Location = new System.Drawing.Point(85, 24);
            this.encryptTB.Margin = new System.Windows.Forms.Padding(0);
            this.encryptTB.Name = "encryptTB";
            this.encryptTB.Size = new System.Drawing.Size(142, 20);
            this.encryptTB.TabIndex = 8;
            // 
            // decryptTB
            // 
            this.decryptTB.Dock = System.Windows.Forms.DockStyle.Fill;
            this.decryptTB.Location = new System.Drawing.Point(319, 24);
            this.decryptTB.Margin = new System.Windows.Forms.Padding(0);
            this.decryptTB.Name = "decryptTB";
            this.decryptTB.Size = new System.Drawing.Size(158, 20);
            this.decryptTB.TabIndex = 9;
            // 
            // refreshBtn
            // 
            this.refreshBtn.Dock = System.Windows.Forms.DockStyle.Right;
            this.refreshBtn.Location = new System.Drawing.Point(477, 0);
            this.refreshBtn.Name = "refreshBtn";
            this.refreshBtn.Size = new System.Drawing.Size(75, 49);
            this.refreshBtn.TabIndex = 2;
            this.refreshBtn.Text = "Refresh Enc";
            this.refreshBtn.UseVisualStyleBackColor = true;
            this.refreshBtn.Click += new System.EventHandler(this.refreshBtn_Click);
            // 
            // G6ApiControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.tableLayoutPanel1);
            this.Controls.Add(this.refreshBtn);
            this.MinimumSize = new System.Drawing.Size(552, 49);
            this.Name = "G6ApiControl";
            this.Size = new System.Drawing.Size(552, 49);
            this.Load += new System.EventHandler(this.G6ApiControl_Load);
            this.tableLayoutPanel1.ResumeLayout(false);
            this.tableLayoutPanel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private System.Windows.Forms.Label declbl;
        private System.Windows.Forms.Label enclbl;
        private System.Windows.Forms.TextBox passwordTB;
        private System.Windows.Forms.TextBox usernameTB;
        private System.Windows.Forms.Label unlbl;
        private System.Windows.Forms.Label pwlbl;
        private System.Windows.Forms.TextBox encryptTB;
        private System.Windows.Forms.TextBox decryptTB;
        private System.Windows.Forms.Button refreshBtn;
    }
}
