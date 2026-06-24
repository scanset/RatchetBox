using System;

namespace App
{
    public class Note
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Body { get; set; }

        public Note()
        {
        }

        public Note(int id, string title, string body)
        {
            Id = id;
            Title = title;
            Body = body;
        }
    }
}