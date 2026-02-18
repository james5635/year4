### Example 1: Building a Burger Meal
In a fast-food scenario, a meal might include a burger, fries, and a drink, with options for customization (e.g., vegetarian or extra cheese). The Builder pattern allows creating different meal configurations without complex constructors.

```csharp
// Product
public class Meal
{
    public string Burger { get; set; }
    public string Side { get; set; }
    public string Drink { get; set; }

    public void Display()
    {
        Console.WriteLine($"Burger: {Burger}, Side: {Side}, Drink: {Drink}");
    }
}

// Builder Interface
public interface IMealBuilder
{
    void BuildBurger();
    void BuildSide();
    void BuildDrink();
    Meal GetMeal();
}

// Concrete Builder
public class VegMealBuilder : IMealBuilder
{
    private Meal meal = new Meal();

    public void BuildBurger() => meal.Burger = "Veggie Burger";
    public void BuildSide() => meal.Side = "Fries";
    public void BuildDrink() => meal.Drink = "Coke";
    public Meal GetMeal() => meal;
}

// Director
public class MealDirector
{
    public Meal Construct(IMealBuilder builder)
    {
        builder.BuildBurger();
        builder.BuildSide();
        builder.BuildDrink();
        return builder.GetMeal();
    }
}

// Usage
class Program
{
    static void Main()
    {
        var director = new MealDirector();
        var vegBuilder = new VegMealBuilder();
        var vegMeal = director.Construct(vegBuilder);
        vegMeal.Display();  // Output: Burger: Veggie Burger, Side: Fries, Drink: Coke
    }
}
```

### Example 2: Assembling a Computer
When building a custom PC, components like CPU, RAM, and storage can vary (e.g., gaming vs. office setup). The Builder pattern handles the step-by-step assembly.

```csharp
// Product
public class Computer
{
    public string CPU { get; set; }
    public string RAM { get; set; }
    public string Storage { get; set; }

    public void Display()
    {
        Console.WriteLine($"CPU: {CPU}, RAM: {RAM}, Storage: {Storage}");
    }
}

// Builder Interface
public interface IComputerBuilder
{
    void BuildCPU();
    void BuildRAM();
    void BuildStorage();
    Computer GetComputer();
}

// Concrete Builder
public class GamingComputerBuilder : IComputerBuilder
{
    private Computer computer = new Computer();

    public void BuildCPU() => computer.CPU = "Intel i9";
    public void BuildRAM() => computer.RAM = "32GB DDR4";
    public void BuildStorage() => computer.Storage = "1TB SSD";
    public Computer GetComputer() => computer;
}

// Director
public class ComputerDirector
{
    public Computer Assemble(IComputerBuilder builder)
    {
        builder.BuildCPU();
        builder.BuildRAM();
        builder.BuildStorage();
        return builder.GetComputer();
    }
}

// Usage
class Program
{
    static void Main()
    {
        var director = new ComputerDirector();
        var gamingBuilder = new GamingComputerBuilder();
        var gamingPC = director.Assemble(gamingBuilder);
        gamingPC.Display();  // Output: CPU: Intel i9, RAM: 32GB DDR4, Storage: 1TB SSD
    }
}
```

### Example 3: Constructing a House
In real estate, houses can be built with varying features like number of rooms, garage, or pool. The Builder pattern manages the construction process for different house types (e.g., luxury vs. basic).

```csharp
// Product
public class House
{
    public int Rooms { get; set; }
    public bool HasGarage { get; set; }
    public bool HasPool { get; set; }

    public void Display()
    {
        Console.WriteLine($"Rooms: {Rooms}, Garage: {HasGarage}, Pool: {HasPool}");
    }
}

// Builder Interface
public interface IHouseBuilder
{
    void BuildRooms();
    void BuildGarage();
    void BuildPool();
    House GetHouse();
}

// Concrete Builder
public class LuxuryHouseBuilder : IHouseBuilder
{
    private House house = new House();

    public void BuildRooms() => house.Rooms = 5;
    public void BuildGarage() => house.HasGarage = true;
    public void BuildPool() => house.HasPool = true;
    public House GetHouse() => house;
}

// Director
public class HouseDirector
{
    public House Construct(IHouseBuilder builder)
    {
        builder.BuildRooms();
        builder.BuildGarage();
        builder.BuildPool();
        return builder.GetHouse();
    }
}

// Usage
class Program
{
    static void Main()
    {
        var director = new HouseDirector();
        var luxuryBuilder = new LuxuryHouseBuilder();
        var luxuryHouse = director.Construct(luxuryBuilder);
        luxuryHouse.Display();  // Output: Rooms: 5, Garage: True, Pool: True
    }
}
```
