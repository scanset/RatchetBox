# `_CRT_DISABLE_PERFCRIT_LOCKS`

Disables performance-critical locking in I/O operations.

## Syntax

```C
#define _CRT_DISABLE_PERFCRIT_LOCKS
```

## Remarks

Defining this symbol can improve performance in single-threaded I/O-bound programs by forcing all I/O operations to assume a single-threaded I/O model. For more information, see [Multithreaded libraries performance](./multithreaded-libraries-performance.md).

## See also

[Global constants](./global-constants.md)