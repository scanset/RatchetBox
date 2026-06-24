name: Terminal
intent: a checkout terminal that rings up sales on its own thread against a shared Catalog
behavior:
  - constructed from an int id and a shared Catalog
  - Run() attempts several sales; for each sale it tries to reserve 1 unit of a few product ids by calling Catalog.TryReserve, adds each reserved product to a Sale via AddLine, and prints "Terminal <id>: sale total <Total>"; if a product is out of stock it prints "Terminal <id>: <id> out of stock"
  - Run() is meant to be called on its own System.Threading.Thread
constraints: C# 5, namespace App
