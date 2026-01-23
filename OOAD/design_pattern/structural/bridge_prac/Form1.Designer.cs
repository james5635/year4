namespace bridge_prac;

partial class Form1
{
    private System.ComponentModel.IContainer components = null;
    private System.Windows.Forms.Panel Panel1;

    protected override void Dispose(bool disposing)
    {
        if (disposing && (components != null))
        {
            components.Dispose();
        }
        base.Dispose(disposing);
    }

    private void InitializeComponent()
    {
        this.Panel1 = new System.Windows.Forms.Panel();
        this.SuspendLayout();
        // 
        // Panel1
        // 
        this.Panel1.Location = new System.Drawing.Point(12, 12);
        this.Panel1.Name = "Panel1";
        this.Panel1.Size = new System.Drawing.Size(400, 200);
        this.Panel1.TabIndex = 0;
        // 
        // Form1
        // 
        this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
        this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
        this.ClientSize = new System.Drawing.Size(424, 224);
        this.Controls.Add(this.Panel1);
        this.Name = "Form1";
        this.Text = "Bridge Pattern - Viewing Objects' Information";
        this.Load += new System.EventHandler(this.Form1_Load);
        this.ResumeLayout(false);
    }
}
