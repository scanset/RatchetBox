using System;
using System.Threading;

namespace App
{
    internal static class Program
    {
        private static long totalSum = 0;
        private static readonly object lockObject = new object();

        private static void SumRange(object state)
        {
            var range = (Tuple<long, long>)state;
            long start = range.Item1;
            long end = range.Item2;
            long sum = 0;

            for (long i = start; i <= end; i++)
            {
                sum += i;
            }

            lock (lockObject)
            {
                totalSum += sum;
            }

            Console.WriteLine("Range " + start + " to " + end + " sum = " + sum);
        }

        private static int Main(string[] args)
        {
            const long total = 1000000;
            const int numThreads = 4;
            long chunkSize = total / numThreads;

            Thread[] threads = new Thread[numThreads];

            for (int i = 0; i < numThreads; i++)
            {
                long start = i * chunkSize + 1;
                long end = (i == numThreads - 1) ? total : (i + 1) * chunkSize;

                threads[i] = new Thread(SumRange);
                threads[i].Start(new Tuple<long, long>(start, end));
            }

            for (int i = 0; i < numThreads; i++)
            {
                threads[i].Join();
            }

            Console.WriteLine("Grand total = " + totalSum);
            return 0;
        }
    }
}