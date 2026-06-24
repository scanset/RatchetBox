using System;

namespace App
{
    public class Circle : IShape
    {
        private double radius;

        public Circle(double radius)
        {
            this.radius = radius;
        }

        public double Area()
        {
            return 3.14159 * radius * radius;
        }

        public string Label()
        {
            return "Circle(r=" + radius + ")";
        }
    }
}