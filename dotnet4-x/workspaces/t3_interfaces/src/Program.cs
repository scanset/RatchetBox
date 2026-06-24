using System;
using System.Collections.Generic;

namespace App
{
    internal static class Program
    {
        private static int Main(string[] args)
        {
            List<IShape> shapes = new List<IShape>();
            shapes.Add(new Circle(5.0));
            shapes.Add(new Rectangle(4.0, 6.0));

            foreach (IShape shape in shapes)
            {
                Console.WriteLine("Name: " + shape.Name());
                Console.WriteLine("Area: " + shape.Area());
            }

            return 0;
        }
    }

    interface IShape
    {
        double Area();
        string Name();
    }

    class Circle : IShape
    {
        private double radius;

        public Circle(double r)
        {
            radius = r;
        }

        public double Area()
        {
            return 3.14159 * radius * radius;
        }

        public string Name()
        {
            return "Circle";
        }
    }

    class Rectangle : IShape
    {
        private double width;
        private double height;

        public Rectangle(double w, double h)
        {
            width = w;
            height = h;
        }

        public double Area()
        {
            return width * height;
        }

        public string Name()
        {
            return "Rectangle";
        }
    }
}