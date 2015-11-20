namespace DtxSQLBrowser.Controls
{
    partial class SetupQueryControl
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
            this.components = new System.ComponentModel.Container();
            this.queryTextTB = new System.Windows.Forms.TextBox();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.getTablesBtn = new System.Windows.Forms.Button();
            this.getProcsBtn = new System.Windows.Forms.Button();
            this.getProcedureInfoBtn = new System.Windows.Forms.Button();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.parameterBuilder1 = new DtxSQLBrowser.Controls.ParameterBuilder();
            this.setupQueryControlBindingSource = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.setupQueryControlBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // queryTextTB
            // 
            this.queryTextTB.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.queryTextTB.Location = new System.Drawing.Point(3, 3);
            this.queryTextTB.Multiline = true;
            this.queryTextTB.Name = "queryTextTB";
            this.queryTextTB.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.queryTextTB.Size = new System.Drawing.Size(504, 98);
            this.queryTextTB.TabIndex = 0;
            this.queryTextTB.Text = "Select last_name, first_name from admin.v_patient";
            // 
            // splitContainer1
            // 
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.Location = new System.Drawing.Point(0, 0);
            this.splitContainer1.Margin = new System.Windows.Forms.Padding(0);
            this.splitContainer1.Name = "splitContainer1";
            this.splitContainer1.Orientation = System.Windows.Forms.Orientation.Horizontal;
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.checkBox1);
            this.splitContainer1.Panel1.Controls.Add(this.getProcedureInfoBtn);
            this.splitContainer1.Panel1.Controls.Add(this.getProcsBtn);
            this.splitContainer1.Panel1.Controls.Add(this.getTablesBtn);
            this.splitContainer1.Panel1.Controls.Add(this.queryTextTB);
            this.splitContainer1.Panel1.Padding = new System.Windows.Forms.Padding(3);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.parameterBuilder1);
            this.splitContainer1.Size = new System.Drawing.Size(612, 301);
            this.splitContainer1.SplitterDistance = 104;
            this.splitContainer1.TabIndex = 1;
            // 
            // getTablesBtn
            // 
            this.getTablesBtn.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.getTablesBtn.Location = new System.Drawing.Point(513, 6);
            this.getTablesBtn.Name = "getTablesBtn";
            this.getTablesBtn.Size = new System.Drawing.Size(93, 23);
            this.getTablesBtn.TabIndex = 1;
            this.getTablesBtn.Text = "Get Tables";
            this.getTablesBtn.UseVisualStyleBackColor = true;
            this.getTablesBtn.Click += new System.EventHandler(this.getTablesBtn_Click);
            // 
            // getProcsBtn
            // 
            this.getProcsBtn.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.getProcsBtn.Location = new System.Drawing.Point(513, 35);
            this.getProcsBtn.Name = "getProcsBtn";
            this.getProcsBtn.Size = new System.Drawing.Size(93, 23);
            this.getProcsBtn.TabIndex = 2;
            this.getProcsBtn.Text = "Get Procedures";
            this.getProcsBtn.UseVisualStyleBackColor = true;
            this.getProcsBtn.Click += new System.EventHandler(this.getProcsBtn_Click);
            // 
            // getProcedureInfoBtn
            // 
            this.getProcedureInfoBtn.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.getProcedureInfoBtn.Location = new System.Drawing.Point(513, 64);
            this.getProcedureInfoBtn.Name = "getProcedureInfoBtn";
            this.getProcedureInfoBtn.Size = new System.Drawing.Size(93, 23);
            this.getProcedureInfoBtn.TabIndex = 3;
            this.getProcedureInfoBtn.Text = "Get Proc Info";
            this.getProcedureInfoBtn.UseVisualStyleBackColor = true;
            this.getProcedureInfoBtn.Click += new System.EventHandler(this.getProcedureInfoBtn_Click);
            // 
            // checkBox1
            // 
            this.checkBox1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(513, 93);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(82, 17);
            this.checkBox1.TabIndex = 4;
            this.checkBox1.Text = "Wrap Text?";
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // parameterBuilder1
            // 
            this.parameterBuilder1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.parameterBuilder1.Location = new System.Drawing.Point(0, 0);
            this.parameterBuilder1.Name = "parameterBuilder1";
            this.parameterBuilder1.Size = new System.Drawing.Size(612, 193);
            this.parameterBuilder1.TabIndex = 0;
            // 
            // setupQueryControlBindingSource
            // 
            this.setupQueryControlBindingSource.DataSource = typeof(DtxSQLBrowser.Controls.SetupQueryControl);
            // 
            // SetupQueryControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.splitContainer1);
            this.Name = "SetupQueryControl";
            this.Size = new System.Drawing.Size(612, 301);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel1.PerformLayout();
            this.splitContainer1.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.setupQueryControlBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TextBox queryTextTB;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private ParameterBuilder parameterBuilder1;
        private System.Windows.Forms.Button getProcsBtn;
        private System.Windows.Forms.Button getTablesBtn;
        private System.Windows.Forms.Button getProcedureInfoBtn;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.BindingSource setupQueryControlBindingSource;
    }
}
