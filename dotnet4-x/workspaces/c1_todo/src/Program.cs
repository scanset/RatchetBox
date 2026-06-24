using System;
using System.Collections.Generic;
using System.Linq;

namespace App
{
    class Program
    {
        static void Main(string[] args)
        {
            TodoList list = new TodoList();
            bool running = true;
            while (running)
            {
                Console.WriteLine("1. Add");
                Console.WriteLine("2. List");
                Console.WriteLine("3. Complete");
                Console.WriteLine("4. Quit");
                Console.Write("Choose an option: ");
                string choice = Console.ReadLine();
                if (choice == "1")
                {
                    Console.Write("Enter title: ");
                    string title = Console.ReadLine();
                    Todo item = new Todo(title);
                    list.Add(item);
                }
                else if (choice == "2")
                {
                    IEnumerable<Todo> items = list.GetAll();
                    foreach (Todo item in items)
                    {
                        string done = item.Done ? "[x]" : "[ ]";
                        Console.WriteLine("{0}. {1} {2}", item.Id, done, item.Title);
                    }
                }
                else if (choice == "3")
                {
                    Console.Write("Enter ID to complete: ");
                    int id = int.Parse(Console.ReadLine());
                    list.Complete(id);
                }
                else if (choice == "4")
                {
                    running = false;
                }
                else
                {
                    Console.WriteLine("Invalid option.");
                }
            }
        }
    }
}