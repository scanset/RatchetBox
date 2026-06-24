name: Catalog
intent: a thread-safe in-memory product catalog shared by checkout terminals
behavior:
  - Add(Product p) assigns the next Id starting at 1, sets p.Id, stores it, and returns the Id
  - Get(int id) returns the Product with that Id, or null if there is none
  - TryReserve(int id, int qty) is thread-safe using a lock: if the product exists and its Stock is at least qty, decrement Stock by qty and return true; otherwise return false
  - Products() returns all products
  - all Stock changes must be safe under concurrent access from multiple threads, so Stock never goes negative
constraints: C# 5, namespace App
