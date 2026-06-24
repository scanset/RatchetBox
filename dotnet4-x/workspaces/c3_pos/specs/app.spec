name: PosApp
intent: simulate concurrent checkout terminals contending for limited stock
behavior:
  - build a Catalog and Add a few Products that have small Stock
  - create 3 Terminals that share that one Catalog
  - start each Terminal's Run on its own System.Threading.Thread, then Join all of them
  - after all threads finish, print the final Stock of every product in the Catalog
  - the thread-safe Catalog.TryReserve must guarantee stock never goes negative despite the concurrent terminals
constraints: C# 5, console, namespace App, use System.Threading.Thread (not async or Task)
