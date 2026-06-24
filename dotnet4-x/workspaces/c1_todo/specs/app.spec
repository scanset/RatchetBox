name: TodoApp
intent: a console menu over a TodoList
behavior:
  - create a TodoList
  - loop a menu: 1 add, 2 list, 3 complete, 4 quit
  - on add, read a Title, make a Todo from it, and add it to the list
  - on list, print each item as its Id, Title, and [x] if Done else [ ]
  - on complete, read an int id and complete that item
constraints: C# 5, console, namespace App
