name: BankAccount
intent: a class modeling a bank account, exercised from Main
behavior:
  - a class Account with an owner name and a balance
  - deposit(amount) adds to the balance
  - withdraw(amount) subtracts only if there are sufficient funds, and returns whether it succeeded
  - Main creates an account, performs a few deposits and withdrawals including one that must fail, and prints the balance after each step
constraints: C# 5, single file, no external packages
