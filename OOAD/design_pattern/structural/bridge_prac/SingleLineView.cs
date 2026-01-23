using System.Windows.Forms;

namespace bridge_prac;

public class SingleLineView : ObjectView
{
    public SingleLineView()
    {
    }

    public SingleLineView(IObject obj) : base(obj)
    {
    }

    protected override void GeneratePanel()
    {
        m_panel.Controls.Clear();
        m_panel.AutoSize = true;
        m_panel.AutoSizeMode = AutoSizeMode.GrowAndShrink;
        Label lbl = new Label();
        lbl.AutoSize = true;
        string line = m_obj.GetObjectType();
        List<DataItem> lstItems = m_obj.GetObjectItems();
        string strFormat = "";
        if (lstItems.Count > 0)
        {
            line += ": ";
        }
        foreach (DataItem item in lstItems)
        {
            if (string.IsNullOrEmpty(strFormat) == false)
            {
                line += ", ";
            }
            if (string.IsNullOrEmpty(item.Format))
            {
                line += string.Format("{0}={1}", item.Field, item.Data);
            }
            else
            {
                strFormat = string.Format("{0}{1}{2}", "{0}={1:", item.Format, "}");
                line += string.Format(strFormat, item.Field, item.Data);
            }
        }
        lbl.Text = line;
        m_panel.Controls.Add(lbl);
    }

    public override string ViewType
    {
        get
        {
            return "Single Line";
        }
    }
}
