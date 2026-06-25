using System;
using System.Threading;

namespace App
{
    class Program
    {
        static void Main(string[] args)
        {
            Warehouse warehouse = new Warehouse();
            warehouse.AddItem(new Item(1, "Item1", 100));
            warehouse.AddItem(new Item(2, "Item2", 100));
            warehouse.AddItem(new Item(3, "Item3", 100));

            Thread[] threads = new Thread[4];
            Picker picker = new Picker();
            int[] results = new int[4];

            for (int i = 0; i < 4; i++)
            {
                int index = i;
                threads[i] = new Thread(delegate()
                {
                    results[index] = picker.Run(warehouse, 1, 50);
                });
                threads[i].Start();
            }

            for (int i = 0; i < 4; i++)
            {
                threads[i].Join();
            }

            int total = 0;
            for (int i = 0; i < 4; i++)
            {
                total += results[i];
            }

            Console.WriteLine("Total reserved: " + total.ToString());
            Console.WriteLine("Item 1 quantity: " + warehouse.QuantityOf(1).ToString());
            Console.WriteLine("Item 2 quantity: " + warehouse.QuantityOf(2).ToString());
            Console.WriteLine("Item 3 quantity: " + warehouse.QuantityOf(3).ToString());
        }
    }
}