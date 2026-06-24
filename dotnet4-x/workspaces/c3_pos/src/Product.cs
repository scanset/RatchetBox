using System;

namespace App
{
    public class Product
    {
        public int Id;
        public string Name;
        public double Price;
        public int Stock;

        public Product(string name, double price, int stock)
        {
            Id = 0;
            Name = name;
            Price = price;
            Stock = stock;
        }
    }
}