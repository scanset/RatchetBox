using System;

namespace App
{
    internal static class Program
    {
        private static int Main(string[] args)
        {
            BankAccount account = new BankAccount("Alice", 100.0);
            Console.WriteLine("Initial balance: " + account.getBalance().ToString());
            
            account.deposit(50.0);
            Console.WriteLine("After deposit: " + account.getBalance().ToString());
            
            account.withdraw(30.0);
            Console.WriteLine("After withdrawal: " + account.getBalance().ToString());
            
            bool success = account.withdraw(200.0);
            Console.WriteLine("Attempt to withdraw 200.0: " + (success ? "Success" : "Failed"));
            Console.WriteLine("Final balance: " + account.getBalance().ToString());
            
            return 0;
        }
    }
    
    internal class BankAccount
    {
        private string owner;
        private double balance;
        
        public BankAccount(string owner, double balance)
        {
            this.owner = owner;
            this.balance = balance;
        }
        
        public void deposit(double amount)
        {
            this.balance = this.balance + amount;
        }
        
        public bool withdraw(double amount)
        {
            if (this.balance >= amount)
            {
                this.balance = this.balance - amount;
                return true;
            }
            else
            {
                return false;
            }
        }
        
        public double getBalance()
        {
            return this.balance;
        }
    }
}