### Example 1: Payment Processing in an E-Commerce System
In an online store, payments can be processed via different methods like credit card, PayPal, or bank transfer. The Strategy pattern allows switching between these methods without changing the checkout code.

```csharp
// Strategy Interface
public interface IPaymentStrategy
{
    void Pay(decimal amount);
}

// Concrete Strategies
public class CreditCardPayment : IPaymentStrategy
{
    public void Pay(decimal amount)
    {
        Console.WriteLine($"Paid {amount:C} using Credit Card.");
    }
}

public class PayPalPayment : IPaymentStrategy
{
    public void Pay(decimal amount)
    {
        Console.WriteLine($"Paid {amount:C} using PayPal.");
    }
}

// Context
public class Checkout
{
    private IPaymentStrategy _paymentStrategy;

    public Checkout(IPaymentStrategy paymentStrategy)
    {
        _paymentStrategy = paymentStrategy;
    }

    public void SetPaymentStrategy(IPaymentStrategy paymentStrategy)
    {
        _paymentStrategy = paymentStrategy;
    }

    public void ProcessPayment(decimal amount)
    {
        _paymentStrategy.Pay(amount);
    }
}

// Usage
class Program
{
    static void Main()
    {
        var checkout = new Checkout(new CreditCardPayment());
        checkout.ProcessPayment(100.00m);  // Output: Paid $100.00 using Credit Card.

        checkout.SetPaymentStrategy(new PayPalPayment());
        checkout.ProcessPayment(50.00m);   // Output: Paid $50.00 using PayPal.
    }
}
```

### Example 2: Sorting Algorithms in a Data Processor
When processing lists of data, different sorting algorithms can be used based on performance needs, like quicksort for large datasets or bubblesort for small ones. The Strategy pattern makes it easy to swap sorters.

```csharp
// Strategy Interface
public interface ISortStrategy
{
    void Sort(List<int> list);
}

// Concrete Strategies
public class QuickSort : ISortStrategy
{
    public void Sort(List<int> list)
    {
        list.Sort();  // Using built-in for simplicity
        Console.WriteLine("Sorted using QuickSort.");
    }
}

public class BubbleSort : ISortStrategy
{
    public void Sort(List<int> list)
    {
        // Simple bubble sort implementation
        for (int i = 0; i < list.Count - 1; i++)
        {
            for (int j = 0; j < list.Count - i - 1; j++)
            {
                if (list[j] > list[j + 1])
                {
                    int temp = list[j];
                    list[j] = list[j + 1];
                    list[j + 1] = temp;
                }
            }
        }
        Console.WriteLine("Sorted using BubbleSort.");
    }
}

// Context
public class DataProcessor
{
    private ISortStrategy _sortStrategy;

    public DataProcessor(ISortStrategy sortStrategy)
    {
        _sortStrategy = sortStrategy;
    }

    public void SetSortStrategy(ISortStrategy sortStrategy)
    {
        _sortStrategy = sortStrategy;
    }

    public void Process(List<int> data)
    {
        _sortStrategy.Sort(data);
        // Further processing...
    }
}

// Usage
class Program
{
    static void Main()
    {
        var data = new List<int> { 5, 3, 8, 4, 2 };
        var processor = new DataProcessor(new QuickSort());
        processor.Process(data);  // Output: Sorted using QuickSort.

        processor.SetSortStrategy(new BubbleSort());
        processor.Process(data);  // Output: Sorted using BubbleSort.
    }
}
```

### Example 3: Navigation Routes in a Mapping App
In a GPS app, routes can be calculated differently based on mode: shortest path for driving, scenic for walking, or fastest for biking. The Strategy pattern allows dynamic route selection.

```csharp
// Strategy Interface
public interface IRouteStrategy
{
    string CalculateRoute(string start, string end);
}

// Concrete Strategies
public class DrivingRoute : IRouteStrategy
{
    public string CalculateRoute(string start, string end)
    {
        return $"Driving route from {start} to {end}: Shortest path via highways.";
    }
}

public class WalkingRoute : IRouteStrategy
{
    public string CalculateRoute(string start, string end)
    {
        return $"Walking route from {start} to {end}: Scenic path through parks.";
    }
}

// Context
public class Navigator
{
    private IRouteStrategy _routeStrategy;

    public Navigator(IRouteStrategy routeStrategy)
    {
        _routeStrategy = routeStrategy;
    }

    public void SetRouteStrategy(IRouteStrategy routeStrategy)
    {
        _routeStrategy = routeStrategy;
    }

    public string GetRoute(string start, string end)
    {
        return _routeStrategy.CalculateRoute(start, end);
    }
}

// Usage
class Program
{
    static void Main()
    {
        var navigator = new Navigator(new DrivingRoute());
        Console.WriteLine(navigator.GetRoute("Home", "Office"));  // Output: Driving route from Home to Office: Shortest path via highways.

        navigator.SetRouteStrategy(new WalkingRoute());
        Console.WriteLine(navigator.GetRoute("Home", "Office"));  // Output: Walking route from Home to Office: Scenic path through parks.
    }
}
```
