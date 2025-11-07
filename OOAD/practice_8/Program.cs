class Person
{
    protected int age;
    public void Greet() => Console.WriteLine("Hello!");
    public void SetAge(int age) => this.age = age;
}
class Student : Person
{
    public void Study() => Console.WriteLine("I'm studying");
    public void ShowAge() => Console.WriteLine($"My age is: {age}");

}
class Teacher : Person
{
    public void Explain() => Console.WriteLine("I'm explaining");
}
class StudentTeacherTest{
    static void Main(){
        Person p = new();
        p.Greet();

        Student s = new();
        s.SetAge(20);
        s.Greet();
        s.ShowAge();

        Teacher t = new();
        t.SetAge(23);
        t.Greet();
        t.Explain();
    }
}