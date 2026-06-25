name: Warehouse
intent: a thread-safe store of items
behavior:
  - AddItem(item) stores an item under its Id
  - Reserve(id, count) is thread-safe: if that item has at least count quantity, decrement by count and return true; otherwise return false
  - QuantityOf(id) returns the item's current quantity
constraints: C++17; thread-safe (std::mutex); uses Item
