using System;

namespace App
{
    internal static class Program
    {
        private static int Main(string[] args)
        {
            int n = 10;
            if (args.Length > 0)
            {
                int.TryParse(args[0], out n);
            }
            if (n <= 0)
            {
                n = 10;
            }

            int count = 0;
            int candidate = 2;
            while (count < n)
            {
                if (IsPrime(candidate))
                {
                    Console.WriteLine(candidate);
                    count++;
                }
                candidate++;
            }
            return 0;
        }

        private static bool IsPrime(int number)
        {
            if (number < 2)
            {
                return false;
            }
            if (number == 2)
            {
                return true;
            }
            if (number % 2 == 0)
            {
                return false;
            }

            int divisor = 3;
            while (divisor * divisor <= number)
            {
                if (number % divisor == 0)
                {
                    return false;
                }
                divisor += 2;
            }
            return true;
        }
    }
}