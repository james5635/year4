// See https://aka.ms/new-console-template for more information

class Program
{
    delegate int A();
    static int f()
    {
        Console.WriteLine("hello world 1");
        return 1;
    }
    int g()
    {
        Console.WriteLine("hello world 2");
        return 2;
    }
    static void Main()
    {
        A a = new A(f);
        a += new Program().g;
        var x = a();
        Console.WriteLine(x);
    }
}
