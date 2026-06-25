# Resource Compiler Fatal Error RW1025

> Out of far heap memory

## Remarks

Check for memory-resident software that might be taking up too much space. Use the CHKDSK program to find out how much memory you have.

If you are creating a large resource file, split the resource script into two files. After creating two .res files, use the MS-DOS command line to join them together:

```
copy first.res /b + second.res /b full.res
```