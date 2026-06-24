using System;
using System.Collections.Generic;
using System.Linq;

namespace App
{
    class Program
    {
        static void Main(string[] args)
        {
            List<IShape> shapes = new List<IShape>();
            shapes.Add(new Circle(5));
            shapes.Add(new Rectangle(4, 6));
            shapes.Add(new Circle(3));
            shapes.Add(new Rectangle(2, 8));

            double totalArea = 0;

            foreach (IShape shape in shapes)
            {
                Console.WriteLine(shape.Label());
                Console.WriteLine(shape.Area().ToString());
                totalArea += shape.Area();
            }

            Console.WriteLine(totalArea.ToString());
        }
    }
}