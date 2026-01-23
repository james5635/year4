using System.Windows.Forms;

namespace bridge_prac;

public class FieldView : ObjectView
{
    public FieldView()
    {
    }

    public FieldView(IObject obj) : base(obj)
    {
    }

    protected override void GeneratePanel()
    {
        m_panel.Controls.Clear();
        m_panel.AutoSize = true;
        m_panel.AutoSizeMode = AutoSizeMode.GrowAndShrink;
        TableLayoutPanel maintlp = new TableLayoutPanel();
        maintlp.ColumnCount = 1;
        maintlp.AutoSize = true;
        maintlp.AutoSizeMode = AutoSizeMode.GrowAndShrink;
        m_panel.Controls.Add(maintlp);
        Label lbl = new Label();
        lbl.Text = m_obj.GetObjectType();
        maintlp.Controls.Add(lbl);
        lbl.Font = new Font(lbl.Font, FontStyle.Bold);

        TableLayoutPanel tlp = new TableLayoutPanel();
        tlp.ColumnCount = 2;
        tlp.AutoSize = true;
        tlp.AutoSizeMode = AutoSizeMode.GrowAndShrink;
        tlp.ColumnStyles.Add(new ColumnStyle(SizeType.AutoSize));
        tlp.ColumnStyles.Add(new ColumnStyle(SizeType.AutoSize));
        maintlp.Controls.Add(tlp);
        string strFormat = "";
        List<DataItem> lstItems = m_obj.GetObjectItems();
        foreach (DataItem item in lstItems)
        {
            lbl = new Label();
            lbl.TextAlign = ContentAlignment.MiddleRight;
            lbl.Text = item.Field;
            lbl.AutoSize = true;
            tlp.Controls.Add(lbl);
            lbl.Anchor = AnchorStyles.Right;
            if (string.IsNullOrEmpty(item.Format))
            {
                strFormat = "{0}";
            }
            else
            {
                strFormat = string.Format("{0}{1}{2}", "{0:", item.Format, "}");
            }
            lbl = new Label();
            lbl.TextAlign = ContentAlignment.MiddleLeft;
            lbl.Text = string.Format(strFormat, item.Data);
            lbl.BorderStyle = BorderStyle.FixedSingle;
            lbl.AutoSize = true;
            tlp.Controls.Add(lbl);
        }
    }

    public override string ViewType
    {
        get
        {
            return "Field View";
        }
    }
}
