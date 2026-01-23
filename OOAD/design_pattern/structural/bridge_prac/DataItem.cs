namespace bridge_prac;

public class DataItem
{
    public string Field { get; set; }
    public object Data { get; set; }
    public string Format { get; set; }

    public DataItem() : this("", null)
    {
    }

    public DataItem(string field, object data) : this(field, data, null)
    {
    }

    public DataItem(string field, object data, string format)
    {
        this.Field = field;
        this.Data = data;
        this.Format = format;
    }
}
