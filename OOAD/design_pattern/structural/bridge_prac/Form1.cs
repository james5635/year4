using System.Windows.Forms;

namespace bridge_prac;

public partial class Form1 : Form
{
    public Form1()
    {
        InitializeComponent();
    }

    private ObjectView objView = null;
    private IObject obj;

    private void Form1_Load(object sender, EventArgs e)
    {
        this.AutoSize = true;
        this.AutoSizeMode = Windows.Forms.AutoSizeMode.GrowAndShrink;
        Panel1.AutoSize = true;
        Panel1.AutoSizeMode = Windows.Forms.AutoSizeMode.GrowAndShrink;
        Panel1.Controls.Clear();
        try
        {
            obj = new Rectangle(4.5, 12.8);
            objView = new SingleLineView(obj);
            Panel first = objView.Layout;
            Panel1.Controls.Add(first);
            obj = new Student("HENG Sensok", "22", 85.5);
            objView = new FieldView(obj);
            Panel second = objView.Layout;
            Panel1.Controls.Add(second);
            second.Top = first.Height + 2;
        }
        catch (Exception ex)
        {
            MessageBox.Show(ex.Message);
        }
    }
}
