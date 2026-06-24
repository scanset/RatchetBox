name: ParallelSum
intent: compute a large sum across multiple threads and show concurrency
behavior:
  - split the integers from 1 to 1000000 into 4 contiguous ranges
  - sum each range on its own System.Threading.Thread, combining the partial results safely
  - as each thread finishes, print its range and partial sum
  - after all threads complete, print the grand total
constraints: C# 5, single file, no external packages, use .NET Framework threads (not async/await)
