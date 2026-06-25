name: App
intent: a console program proving the warehouse is thread-safe under contention
behavior:
  - build a Warehouse and add three Items with Ids 1, 2, 3, each starting Quantity 100
  - launch 4 concurrent Pickers, each calling Run(warehouse, 1, 50) on its own std::thread
  - join all of them, then print the final QuantityOf each item
  - item 1 must end at exactly 100 minus the total reserved across all pickers, and never below 0
constraints: C++17; console entry (int main); uses Warehouse, Picker, Item; std::thread
