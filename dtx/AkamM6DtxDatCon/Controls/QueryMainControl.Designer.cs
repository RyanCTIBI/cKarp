namespace DtxSQLBrowser.Controls
{
    partial class QueryMainControl
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
            this.dtxVersionCombo = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.queryHistoryLB = new System.Windows.Forms.ListBox();
            this.closeBtn = new System.Windows.Forms.Button();
            this.executeBtn = new System.Windows.Forms.Button();
            this.executeSelBtn = new System.Windows.Forms.Button();
            this.readerTypeCombo = new System.Windows.Forms.ComboBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.exportBtn = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.timeout = new System.Windows.Forms.NumericUpDown();
            this.label3 = new System.Windows.Forms.Label();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.clearHistoryBtn = new System.Windows.Forms.Button();
            this.splitContainer2 = new System.Windows.Forms.SplitContainer();
            this.setupQueryControl1 = new DtxSQLBrowser.Controls.SetupQueryControl();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.timeout)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer2)).BeginInit();
            this.splitContainer2.Panel2.SuspendLayout();
            this.splitContainer2.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // dtxVersionCombo
            // 
            this.dtxVersionCombo.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dtxVersionCombo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.dtxVersionCombo.FormattingEnabled = true;
            this.dtxVersionCombo.Items.AddRange(new object[] {
            "NA",
            "G5",
            "G51",
            "G52",
            "G6",
            "G61",
            "G62"});
            this.dtxVersionCombo.Location = new System.Drawing.Point(6, 18);
            this.dtxVersionCombo.Margin = new System.Windows.Forms.Padding(0);
            this.dtxVersionCombo.Name = "dtxVersionCombo";
            this.dtxVersionCombo.Size = new System.Drawing.Size(155, 21);
            this.dtxVersionCombo.TabIndex = 0;
            this.dtxVersionCombo.SelectedValueChanged += new System.EventHandler(this.dtxVersionCombo_SelectedValueChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(3, 5);
            this.label1.Margin = new System.Windows.Forms.Padding(0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(62, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "API Version";
            this.label1.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            // 
            // queryHistoryLB
            // 
            this.queryHistoryLB.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.queryHistoryLB.FormattingEnabled = true;
            this.queryHistoryLB.Location = new System.Drawing.Point(6, 64);
            this.queryHistoryLB.Name = "queryHistoryLB";
            this.queryHistoryLB.Size = new System.Drawing.Size(149, 69);
            this.queryHistoryLB.TabIndex = 3;
            this.queryHistoryLB.DoubleClick += new System.EventHandler(this.queryHistoryLB_DoubleClick);
            // 
            // closeBtn
            // 
            this.closeBtn.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.closeBtn.Location = new System.Drawing.Point(5, 1);
            this.closeBtn.Margin = new System.Windows.Forms.Padding(0);
            this.closeBtn.Name = "closeBtn";
            this.closeBtn.Size = new System.Drawing.Size(160, 20);
            this.closeBtn.TabIndex = 4;
            this.closeBtn.Text = "Close";
            this.closeBtn.UseVisualStyleBackColor = true;
            this.closeBtn.Click += new System.EventHandler(this.closeBtn_Click);
            // 
            // executeBtn
            // 
            this.executeBtn.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.executeBtn.Location = new System.Drawing.Point(5, 21);
            this.executeBtn.Margin = new System.Windows.Forms.Padding(0);
            this.executeBtn.Name = "executeBtn";
            this.executeBtn.Size = new System.Drawing.Size(160, 20);
            this.executeBtn.TabIndex = 5;
            this.executeBtn.Text = "Execute (F5)";
            this.executeBtn.UseVisualStyleBackColor = true;
            this.executeBtn.Click += new System.EventHandler(this.executeBtn_Click);
            // 
            // executeSelBtn
            // 
            this.executeSelBtn.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.executeSelBtn.Location = new System.Drawing.Point(5, 41);
            this.executeSelBtn.Margin = new System.Windows.Forms.Padding(0);
            this.executeSelBtn.Name = "executeSelBtn";
            this.executeSelBtn.Size = new System.Drawing.Size(160, 20);
            this.executeSelBtn.TabIndex = 6;
            this.executeSelBtn.Text = "Execute Selection (F6)";
            this.executeSelBtn.UseVisualStyleBackColor = true;
            this.executeSelBtn.Click += new System.EventHandler(this.executeSelBtn_Click);
            // 
            // readerTypeCombo
            // 
            this.readerTypeCombo.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.readerTypeCombo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.readerTypeCombo.FormattingEnabled = true;
            this.readerTypeCombo.Location = new System.Drawing.Point(6, 64);
            this.readerTypeCombo.Margin = new System.Windows.Forms.Padding(0);
            this.readerTypeCombo.Name = "readerTypeCombo";
            this.readerTypeCombo.Size = new System.Drawing.Size(158, 21);
            this.readerTypeCombo.TabIndex = 7;
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel1.BackColor = System.Drawing.SystemColors.Control;
            this.panel1.Controls.Add(this.exportBtn);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.timeout);
            this.panel1.Location = new System.Drawing.Point(0, 86);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(179, 57);
            this.panel1.TabIndex = 9;
            // 
            // exportBtn
            // 
            this.exportBtn.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.exportBtn.Location = new System.Drawing.Point(6, 31);
            this.exportBtn.Name = "exportBtn";
            this.exportBtn.Size = new System.Drawing.Size(159, 23);
            this.exportBtn.TabIndex = 10;
            this.exportBtn.Text = "Export Results!";
            this.exportBtn.UseVisualStyleBackColor = true;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(3, 5);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(48, 13);
            this.label2.TabIndex = 9;
            this.label2.Text = "Timeout:";
            // 
            // timeout
            // 
            this.timeout.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.timeout.Location = new System.Drawing.Point(57, 3);
            this.timeout.Maximum = new decimal(new int[] {
            2000,
            0,
            0,
            0});
            this.timeout.Name = "timeout";
            this.timeout.Size = new System.Drawing.Size(105, 20);
            this.timeout.TabIndex = 8;
            this.timeout.Value = new decimal(new int[] {
            200,
            0,
            0,
            0});
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(3, 48);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(73, 13);
            this.label3.TabIndex = 11;
            this.label3.Text = "Query History:";
            // 
            // splitContainer1
            // 
            this.splitContainer1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.Location = new System.Drawing.Point(0, 0);
            this.splitContainer1.Margin = new System.Windows.Forms.Padding(0);
            this.splitContainer1.Name = "splitContainer1";
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.BackColor = System.Drawing.SystemColors.Control;
            this.splitContainer1.Panel1.Controls.Add(this.clearHistoryBtn);
            this.splitContainer1.Panel1.Controls.Add(this.queryHistoryLB);
            this.splitContainer1.Panel1.Controls.Add(this.label3);
            this.splitContainer1.Panel1.Controls.Add(this.dtxVersionCombo);
            this.splitContainer1.Panel1.Controls.Add(this.label1);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.splitContainer2);
            this.splitContainer1.Panel2.Controls.Add(this.panel2);
            this.splitContainer1.Size = new System.Drawing.Size(1159, 143);
            this.splitContainer1.SplitterDistance = 174;
            this.splitContainer1.TabIndex = 2;
            // 
            // clearHistoryBtn
            // 
            this.clearHistoryBtn.Location = new System.Drawing.Point(80, 42);
            this.clearHistoryBtn.Name = "clearHistoryBtn";
            this.clearHistoryBtn.Size = new System.Drawing.Size(75, 19);
            this.clearHistoryBtn.TabIndex = 12;
            this.clearHistoryBtn.Text = "Clear";
            this.clearHistoryBtn.UseVisualStyleBackColor = true;
            this.clearHistoryBtn.Click += new System.EventHandler(this.clearHistoryBtn_Click);
            // 
            // splitContainer2
            // 
            this.splitContainer2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer2.FixedPanel = System.Windows.Forms.FixedPanel.Panel1;
            this.splitContainer2.IsSplitterFixed = true;
            this.splitContainer2.Location = new System.Drawing.Point(0, 0);
            this.splitContainer2.Name = "splitContainer2";
            this.splitContainer2.Orientation = System.Windows.Forms.Orientation.Horizontal;
            // 
            // splitContainer2.Panel1
            // 
            this.splitContainer2.Panel1.BackColor = System.Drawing.SystemColors.Control;
            this.splitContainer2.Panel1MinSize = 34;
            // 
            // splitContainer2.Panel2
            // 
            this.splitContainer2.Panel2.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.splitContainer2.Panel2.Controls.Add(this.setupQueryControl1);
            this.splitContainer2.Size = new System.Drawing.Size(814, 141);
            this.splitContainer2.SplitterDistance = 34;
            this.splitContainer2.TabIndex = 11;
            // 
            // setupQueryControl1
            // 
            this.setupQueryControl1.BackColor = System.Drawing.SystemColors.Control;
            this.setupQueryControl1.CommandText = "";
            this.setupQueryControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.setupQueryControl1.Location = new System.Drawing.Point(0, 0);
            this.setupQueryControl1.Name = "setupQueryControl1";
            this.setupQueryControl1.Parameters = new Helpers.ParamHelper[0];
            this.setupQueryControl1.Size = new System.Drawing.Size(814, 103);
            this.setupQueryControl1.TabIndex = 0;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.SystemColors.Control;
            this.panel2.Controls.Add(this.executeSelBtn);
            this.panel2.Controls.Add(this.executeBtn);
            this.panel2.Controls.Add(this.closeBtn);
            this.panel2.Controls.Add(this.panel1);
            this.panel2.Controls.Add(this.readerTypeCombo);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Right;
            this.panel2.Location = new System.Drawing.Point(814, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(165, 141);
            this.panel2.TabIndex = 10;
            // 
            // QueryMainControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.splitContainer1);
            this.MinimumSize = new System.Drawing.Size(994, 143);
            this.Name = "QueryMainControl";
            this.Size = new System.Drawing.Size(1159, 143);
            this.Load += new System.EventHandler(this.QueryMainControl_Load);
            this.KeyUp += new System.Windows.Forms.KeyEventHandler(this.QueryMainControl_KeyUp);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.timeout)).EndInit();
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel1.PerformLayout();
            this.splitContainer1.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            this.splitContainer2.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer2)).EndInit();
            this.splitContainer2.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ComboBox dtxVersionCombo;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ListBox queryHistoryLB;
        private System.Windows.Forms.Button closeBtn;
        private System.Windows.Forms.Button executeBtn;
        private System.Windows.Forms.Button executeSelBtn;
        private System.Windows.Forms.ComboBox readerTypeCombo;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.NumericUpDown timeout;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button exportBtn;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.SplitContainer splitContainer2;
        private SetupQueryControl setupQueryControl1;
        private System.Windows.Forms.Button clearHistoryBtn;
        
    }
}
