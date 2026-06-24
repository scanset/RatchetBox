using System;
using System.Collections.Generic;
using System.Threading;

namespace App
{
    public class Catalog
    {
        private readonly Dictionary<int, Product> _products = new Dictionary<int, Product>();
        private readonly object _lock = new object();
        private int _nextId = 1;

        public int Add(Product p)
        {
            lock (_lock)
            {
                p.Id = _nextId++;
                _products.Add(p.Id, p);
                return p.Id;
            }
        }

        public Product Get(int id)
        {
            lock (_lock)
            {
                Product result;
                if (_products.TryGetValue(id, out result))
                {
                    return result;
                }
                return null;
            }
        }

        public bool TryReserve(int id, int qty)
        {
            lock (_lock)
            {
                Product p;
                if (_products.TryGetValue(id, out p))
                {
                    if (p.Stock >= qty)
                    {
                        p.Stock -= qty;
                        return true;
                    }
                }
                return false;
            }
        }

        public IEnumerable<Product> Products()
        {
            lock (_lock)
            {
                foreach (var kvp in _products)
                {
                    yield return kvp.Value;
                }
            }
        }
    }
}