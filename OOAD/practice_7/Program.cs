class Person
{
    public string Name { get; set; }
    public Person(string n) =>
        this.Name = n;
    ~Person() =>
        this.Name = string.Empty;
    public override string ToString() => $"Hello! My name is {Name}";
}
class Program
{
    static void Main()
    {
        Person[] persons = new Person[3] { new Person(Console.ReadLine()!),
            new Person(Console.ReadLine()!), new Person(Console.ReadLine()!) };
        persons.ToList<Person>().ForEach((p) => Console.WriteLine(p));
    }
}
