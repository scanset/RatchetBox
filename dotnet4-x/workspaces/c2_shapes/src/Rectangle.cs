using System;

namespace App
{
    public class Rectangle : IShape
    {
        private double width;
        private double height;

        public Rectangle(double width, double height)
        {
            this.width = width;
            this.height = height;
        }

        public double Area()
        {
            return width * height;
        }

        public string Label()
        {
            return "Rect(" + width + "x" + height + ")";
        }
    }
}