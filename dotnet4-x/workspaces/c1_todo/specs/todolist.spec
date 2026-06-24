name: TodoList
intent: an in-memory list of Todo items
behavior:
  - Add(Todo item) assigns the next Id starting at 1, sets item.Id, stores the item, and returns the Id
  - All() returns all items
  - Complete(int id) sets Done to true on the item with that Id
  - Remove(int id) removes the item with that Id
constraints: C# 5, namespace App
