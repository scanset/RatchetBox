using System;
using System.Threading;
using App;

class Program
{
    static void Main()
    {
        Catalog catalog = new Catalog();
        catalog.Add(new Product("apple", 5.0, 4));
        catalog.Add(new Product("banana", 3.0, 3));
        catalog.Add(new Product("orange", 7.0, 2));

        Terminal t1 = new Terminal(1, catalog);
        Terminal t2 = new Terminal(2, catalog);
        Terminal t3 = new Terminal(3, catalog);

        Thread th1 = new Thread(t1.Run);
        Thread th2 = new Thread(t2.Run);
        Thread th3 = new Thread(t3.Run);

        th1.Start();
        th2.Start();
        th3.Start();

        th1.Join();
        th2.Join();
        th3.Join();

        foreach (Product p in catalog.Products())
        {
            Console.WriteLine(p.Name + ": " + p.Stock);
        }
    }
}