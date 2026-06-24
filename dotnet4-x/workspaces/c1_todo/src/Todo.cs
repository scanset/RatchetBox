using System;

namespace App
{
    public class Todo
    {
        public int Id;
        public string Title;
        public bool Done;

        public Todo(string title)
        {
            Id = 0;
            Title = title;
            Done = false;
        }
    }
}