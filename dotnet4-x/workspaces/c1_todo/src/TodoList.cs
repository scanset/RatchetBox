using System;
using System.Collections.Generic;
using System.Linq;

namespace App
{
    public class TodoList
    {
        private List<Todo> _items;
        private int _nextId;

        public TodoList()
        {
            _items = new List<Todo>();
            _nextId = 1;
        }

        public int Add(Todo item)
        {
            item.Id = _nextId;
            _nextId++;
            _items.Add(item);
            return item.Id;
        }

        public List<Todo> All()
        {
            return _items;
        }

        public void Complete(int id)
        {
            Todo item = _items.FirstOrDefault(x => x.Id == id);
            if (item != null)
            {
                item.Done = true;
            }
        }

        public void Remove(int id)
        {
            Todo item = _items.FirstOrDefault(x => x.Id == id);
            if (item != null)
            {
                _items.Remove(item);
            }
        }
    }
}