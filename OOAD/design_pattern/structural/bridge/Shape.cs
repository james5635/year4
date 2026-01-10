/*
Imagine you have multiple shapes (Circle, Rectangle) that need to be drawn, and multiple rendering APIs (OpenGL, DirectX). You want to draw any shape using any renderer.
*/

// Implementation
public interface IRenderer
{
    void RenderCircle(float radius);
}

// Concrete Implementations
public class OpenGLRenderer : IRenderer
{
    public void RenderCircle(float radius)
    {
        Console.WriteLine($"Drawing circle with OpenGL, radius {radius}");
    }
}

public class DirectXRenderer : IRenderer
{
    public void RenderCircle(float radius)
    {
        Console.WriteLine($"Drawing circle with DirectX, radius {radius}");
    }
}

// Abstraction
public abstract class Shape
{
    protected IRenderer renderer;

    protected Shape(IRenderer renderer)
    {
        this.renderer = renderer;
    }

    public abstract void Draw();
}

// Refined Abstraction
public class Circle : Shape
{
    private float radius;

    public Circle(IRenderer renderer, float radius) : base(renderer)
    {
        this.radius = radius;
    }

    public override void Draw()
    {
        renderer.RenderCircle(radius);
    }
}


public class Client
{
    public static void Main(String[] args)
    {
        IRenderer openGLRenderer = new OpenGLRenderer();
        IRenderer directXRenderer = new DirectXRenderer();

        Shape circle1 = new Circle(openGLRenderer, 5.0f);
        Shape circle2 = new Circle(directXRenderer, 10.0f);

        circle1.Draw();
        circle2.Draw();
    }
}
