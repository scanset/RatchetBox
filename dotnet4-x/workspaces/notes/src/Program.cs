using System;
using System.Collections.Generic;
using System.Linq;

class Program
{
    static void Main()
    {
        var store = new NotesStore();
        bool running = true;
        while (running)
        {
            Console.WriteLine("1 add, 2 list, 3 remove, 4 quit");
            string input = Console.ReadLine();
            if (input == "1")
            {
                Console.Write("Title: ");
                string title = Console.ReadLine();
                Console.Write("Body: ");
                string body = Console.ReadLine();
                Note note = new Note(title, body);
                store.Add(note);
            }
            else if (input == "2")
            {
                IEnumerable<Note> all = store.All();
                foreach (Note n in all)
                {
                    Console.WriteLine(n.Id + ", " + n.Title + ", " + n.Body);
                }
            }
            else if (input == "3")
            {
                Console.Write("Id: ");
                string idStr = Console.ReadLine();
                int id = int.Parse(idStr);
                store.Remove(id);
            }
            else if (input == "4")
            {
                running = false;
            }
        }
    }
}