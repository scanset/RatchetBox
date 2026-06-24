using System;
using System.Collections.Generic;
using System.Linq;

namespace App
{
    public class NoteStore
    {
        private Dictionary<int, Note> _notes;
        private int _nextId;

        public NoteStore()
        {
            _notes = new Dictionary<int, Note>();
            _nextId = 1;
        }

        public int Add(Note note)
        {
            int id = _nextId;
            _nextId++;
            _notes.Add(id, note);
            return id;
        }

        public IEnumerable<Note> List()
        {
            return _notes.Values.ToList();
        }

        public bool Remove(int id)
        {
            return _notes.Remove(id);
        }
    }
}