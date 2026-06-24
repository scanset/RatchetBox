name: Sale
intent: one checkout transaction
behavior:
  - has a double Total starting at 0
  - AddLine(Product p, int qty) records a line and adds p.Price times qty to Total
  - LineCount() returns how many lines were added
constraints: C# 5, namespace App
