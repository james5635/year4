// IVehicle interface
interface IVehicle
{
    void Drive();
    bool Refuel(int amount);
}

// Car class implementing IVehicle
class Car : IVehicle
{
    private int _gasoline;

    public Car(int startingGasoline)
    {
        _gasoline = startingGasoline;
    }

    public void Drive()
    {
        if (_gasoline > 0)
        {
            Console.WriteLine("Driving");
        }
    }

    public bool Refuel(int amount)
    {
        _gasoline += amount;
        return true;
    }
}

// Main program
class Program
{
    static void Main(string[] args)
    {
        // Create Car object with 0 gasoline
        Car car = new Car(0);

        // Ask user for gasoline amount to refuel
        Console.Write("Enter amount of gasoline to refuel: ");
        int refuelAmount = int.Parse(Console.ReadLine());

        // Refuel the car
        car.Refuel(refuelAmount);

        // Execute Drive method
        car.Drive();
    }
}
