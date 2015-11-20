namespace DtxSQLBrowser
{
    partial class QueryMainGL
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(QueryMainGL));
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.queryMainControl1 = new DtxSQLBrowser.Controls.QueryMainControl();
            this.resultViewer1 = new DtxSQLBrowser.Controls.ResultViewer();
            this.panel1 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // splitContainer1
            // 
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.Location = new System.Drawing.Point(3, 3);
            this.splitContainer1.Name = "splitContainer1";
            this.splitContainer1.Orientation = System.Windows.Forms.Orientation.Horizontal;
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.queryMainControl1);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.resultViewer1);
            this.splitContainer1.Size = new System.Drawing.Size(1000, 626);
            this.splitContainer1.SplitterDistance = 166;
            this.splitContainer1.TabIndex = 2;
            // 
            // queryMainControl1
            // 
            this.queryMainControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.queryMainControl1.Location = new System.Drawing.Point(0, 0);
            this.queryMainControl1.MinimumSize = new System.Drawing.Size(994, 143);
            this.queryMainControl1.Name = "queryMainControl1";
            this.queryMainControl1.Results = null;
            this.queryMainControl1.Size = new System.Drawing.Size(1000, 166);
            this.queryMainControl1.TabIndex = 0;
            // 
            // resultViewer1
            // 
            this.resultViewer1.BackColor = System.Drawing.SystemColors.Control;
            this.resultViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.resultViewer1.Location = new System.Drawing.Point(0, 0);
            this.resultViewer1.Name = "resultViewer1";
            this.resultViewer1.Size = new System.Drawing.Size(1000, 456);
            this.resultViewer1.TabIndex = 0;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.splitContainer1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Padding = new System.Windows.Forms.Padding(3);
            this.panel1.Size = new System.Drawing.Size(1006, 632);
            this.panel1.TabIndex = 3;
            // 
            // QueryMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1006, 632);
            this.Controls.Add(this.panel1);
            this.KeyPreview = true;
            this.MinimumSize = new System.Drawing.Size(1022, 664);
            this.Name = "QueryMain";
            this.Text = "QueryMain";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.QueryMain_FormClosing);
            this.Load += new System.EventHandler(this.QueryMain_Load);
            this.KeyUp+= new System.Windows.Forms.KeyEventHandler(this.QueryMain_KeyUp);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private Controls.QueryMainControl queryMainControl1;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.Panel panel1;
        private Controls.ResultViewer resultViewer1;
    }
}