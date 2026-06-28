name: Store
role: data
intent: In-process storage for items with unique ID generation
api:
  - func (s *Store) Put(name string) string
  - func (s *Store) Get(id string) (string, bool)
behavior:
  - Put returns a unique ID for each item
  - Get returns the item name and true if found, otherwise empty string and false
constraints: package main
