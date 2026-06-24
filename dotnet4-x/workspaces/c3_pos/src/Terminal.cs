using System;
using System.Threading;

namespace App
{
    public class Terminal
    {
        private int id;
        private Catalog catalog;

        public Terminal(int id, Catalog catalog)
        {
            this.id = id;
            this.catalog = catalog;
        }

        public void Run()
        {
            Sale sale = new Sale();
            int[] productIds = { 1, 2, 3 };

            foreach (int productId in productIds)
            {
                Product product = catalog.Get(productId);
                if (product != null && catalog.TryReserve(productId, 1))
                {
                    sale.AddLine(product, 1);
                }
                else
                {
                    Console.WriteLine("Terminal " + id + ": " + productId + " out of stock");
                }
            }

            Console.WriteLine("Terminal " + id + ": sale total " + sale.Total);
        }
    }
}