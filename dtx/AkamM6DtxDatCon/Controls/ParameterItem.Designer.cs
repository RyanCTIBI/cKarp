namespace DtxSQLBrowser.Controls
{
    partial class ParameterItem
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
            this.paramDirectionCombo = new System.Windows.Forms.ComboBox();
            this.paramTypeCombo = new System.Windows.Forms.ComboBox();
            this.paramNameTB = new System.Windows.Forms.TextBox();
            this.paramValueTB = new System.Windows.Forms.TextBox();
            this.deleteBtn = new System.Windows.Forms.Button();
            this.paramSize = new System.Windows.Forms.NumericUpDown();
            ((System.ComponentModel.ISupportInitialize)(this.paramSize)).BeginInit();
            this.SuspendLayout();
            // 
            // paramDirectionCombo
            // 
            this.paramDirectionCombo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.paramDirectionCombo.FormattingEnabled = true;
            this.paramDirectionCombo.Location = new System.Drawing.Point(3, 0);
            this.paramDirectionCombo.Name = "paramDirectionCombo";
            this.paramDirectionCombo.Size = new System.Drawing.Size(79, 21);
            this.paramDirectionCombo.TabIndex = 0;
            // 
            // paramTypeCombo
            // 
            this.paramTypeCombo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.paramTypeCombo.FormattingEnabled = true;
            this.paramTypeCombo.Location = new System.Drawing.Point(157, 0);
            this.paramTypeCombo.Name = "paramTypeCombo";
            this.paramTypeCombo.Size = new System.Drawing.Size(78, 21);
            this.paramTypeCombo.TabIndex = 1;
            // 
            // paramNameTB
            // 
            this.paramNameTB.Location = new System.Drawing.Point(85, 1);
            this.paramNameTB.Name = "paramNameTB";
            this.paramNameTB.Size = new System.Drawing.Size(67, 20);
            this.paramNameTB.TabIndex = 2;
            this.paramNameTB.Text = "Name";
            // 
            // paramValueTB
            // 
            this.paramValueTB.Location = new System.Drawing.Point(318, 1);
            this.paramValueTB.Name = "paramValueTB";
            this.paramValueTB.Size = new System.Drawing.Size(144, 20);
            this.paramValueTB.TabIndex = 3;
            this.paramValueTB.Text = "ParamValue";
            // 
            // deleteBtn
            // 
            this.deleteBtn.Location = new System.Drawing.Point(465, 1);
            this.deleteBtn.Margin = new System.Windows.Forms.Padding(0);
            this.deleteBtn.Name = "deleteBtn";
            this.deleteBtn.Size = new System.Drawing.Size(16, 20);
            this.deleteBtn.TabIndex = 4;
            this.deleteBtn.Text = "X";
            this.deleteBtn.UseVisualStyleBackColor = true;
            this.deleteBtn.Click += new System.EventHandler(this.deleteBtn_Click);
            // 
            // paramSize
            // 
            this.paramSize.Location = new System.Drawing.Point(241, 1);
            this.paramSize.Maximum = new decimal(new int[] {
            8000,
            0,
            0,
            0});
            this.paramSize.Name = "paramSize";
            this.paramSize.Size = new System.Drawing.Size(71, 20);
            this.paramSize.TabIndex = 5;
            // 
            // ParameterItem
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.paramSize);
            this.Controls.Add(this.deleteBtn);
            this.Controls.Add(this.paramValueTB);
            this.Controls.Add(this.paramNameTB);
            this.Controls.Add(this.paramTypeCombo);
            this.Controls.Add(this.paramDirectionCombo);
            this.Margin = new System.Windows.Forms.Padding(1);
            this.Name = "ParameterItem";
            this.Size = new System.Drawing.Size(485, 23);
            ((System.ComponentModel.ISupportInitialize)(this.paramSize)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox paramDirectionCombo;
        private System.Windows.Forms.ComboBox paramTypeCombo;
        private System.Windows.Forms.TextBox paramNameTB;
        private System.Windows.Forms.TextBox paramValueTB;
        private System.Windows.Forms.Button deleteBtn;
        private System.Windows.Forms.NumericUpDown paramSize;
    }
}
