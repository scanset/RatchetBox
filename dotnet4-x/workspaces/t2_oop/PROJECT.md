# t2_oop

## Purpose
One or two lines: what this is and why it exists.

## Architecture
Single exe via /recurse. Pure logic in src/Core, I/O adapters in src/Drivers, wired together in Program.cs.

## Status / TODO
- [x] scaffold + first green build
- [ ] (next feature)

## Changelog
- 2026-06-23  scaffolded (console)
- 2026-06-23  edited src/Program.cs (name: BankAccount intent: a class modeling a bank account, exercised from Main behavior: - a class Account with an owner name and a balance - deposit(amount) adds to the balance - withdraw(amount) subtracts only if there are sufficient funds, and returns whether it succeeded - Main creates an account, performs a few deposits and withdrawals including one that must fail, and prints the balance after each step constraints: C# 5, single file, no external packages)
