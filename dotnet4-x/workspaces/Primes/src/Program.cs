using System;
using System.Collections.Generic;

class Program
{
    static void Main(string[] args)
    {
        int n = 10;
        if (args.Length > 0)
        {
            int parsed;
            if (int.TryParse(args[0], out parsed) && parsed > 0)
            {
                n = parsed;
            }
        }

        List<int> primes = new List<int>();
        int candidate = 2;

        while (primes.Count < n)
        {
            if (IsPrime(candidate, primes))
            {
                primes.Add(candidate);
            }
            candidate++;
        }

        foreach (int prime in primes)
        {
            Console.WriteLine(prime);
        }
    }

    static bool IsPrime(int number, List<int> knownPrimes)
    {
        if (number < 2)
        {
            return false;
        }

        foreach (int prime in knownPrimes)
        {
            if (prime * prime > number)
            {
                break;
            }

            if (number % prime == 0)
            {
                return false;
            }
        }

        return true;
    }
}