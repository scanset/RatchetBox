name: Todo
intent: a single todo item
behavior:
  - has an int Id, a string Title, and a bool Done
  - constructed from a Title only; Id starts at 0 and Done starts at false
  - the TodoList assigns the real Id when the item is added
constraints: C# 5, namespace App
