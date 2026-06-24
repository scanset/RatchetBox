using System;
using System.Collections.Generic;

namespace App
{
    public class Sale
    {
        private double total;
        private List<Tuple<Product, int>> lines;

        public Sale()
        {
            this.total = 0.0;
            this.lines = new List<Tuple<Product, int>>();
        }

        public double Total
        {
            get { return this.total; }
        }

        public void AddLine(Product p, int qty)
        {
            this.lines.Add(new Tuple<Product, int>(p, qty));
            this.total += p.Price * qty;
        }

        public int LineCount()
        {
            return this.lines.Count;
        }
    }
}