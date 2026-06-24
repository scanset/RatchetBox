using System;

namespace App
{
    public class Note
    {
        public int Id;
        public string Title;
        public string Body;

        public Note(int id, string title, string body)
        {
            Id = id;
            Title = title;
            Body = body;
        }
    }
}