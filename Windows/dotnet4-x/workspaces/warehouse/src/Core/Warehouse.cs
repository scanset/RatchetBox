using System;
using System.Collections.Generic;
using System.Threading;

namespace App
{
    class Warehouse
    {
        private Dictionary<int, Item> items;
        private object lockObject;

        public Warehouse()
        {
            this.items = new Dictionary<int, Item>();
            this.lockObject = new object();
        }

        public void AddItem(Item item)
        {
            lock (this.lockObject)
            {
                this.items[item.Id] = item;
            }
        }

        public bool Reserve(int id, int count)
        {
            lock (this.lockObject)
            {
                if (this.items.ContainsKey(id))
                {
                    Item item = this.items[id];
                    if (item.Quantity >= count)
                    {
                        item.Quantity = item.Quantity - count;
                        return true;
                    }
                }
                return false;
            }
        }

        public int QuantityOf(int id)
        {
            lock (this.lockObject)
            {
                if (this.items.ContainsKey(id))
                {
                    return this.items[id].Quantity;
                }
                return 0;
            }
        }
    }
}