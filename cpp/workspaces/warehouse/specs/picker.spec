name: Picker
intent: a concurrent worker that reserves stock
behavior:
  - Run(warehouse, id, attempts) calls Reserve(id, 1) on the warehouse `attempts` times and returns how many calls succeeded
constraints: C++17; uses Warehouse
