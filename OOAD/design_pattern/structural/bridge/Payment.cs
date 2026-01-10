/*
Imagine you are building an e-commerce system. You have different payment types (Online Payment, Subscription Payment, Refund) and different payment gateways (PayPal, Stripe).
*/

// Implementation
public interface IPaymentGateway
{
    void ProcessPayment(decimal amount);
}

// Concrete Implementations
public class PayPalGateway : IPaymentGateway
{
    public void ProcessPayment(decimal amount)
    {
        Console.WriteLine($"Paid {amount} using PayPal");
    }
}

public class StripeGateway : IPaymentGateway
{
    public void ProcessPayment(decimal amount)
    {
        Console.WriteLine($"Paid {amount} using Stripe");
    }
}

// Abstraction
public abstract class Payment
{
    protected IPaymentGateway gateway;

    protected Payment(IPaymentGateway gateway)
    {
        this.gateway = gateway;
    }

    public abstract void Pay(decimal amount);
}

// Refined Abstraction
public class OnlinePayment : Payment
{
    public OnlinePayment(IPaymentGateway gateway) : base(gateway) {}

    public override void Pay(decimal amount)
    {
        gateway.ProcessPayment(amount);
    }
}


public class Client
{
    public static void Main(String[] args)
    {
        Payment onlinePaymentWithPayPal = new OnlinePayment(new PayPalGateway());
        onlinePaymentWithPayPal.Pay(100.00m);

        Payment onlinePaymentWithStripe = new OnlinePayment(new StripeGateway());
        onlinePaymentWithStripe.Pay(200.00m);

    }
}
