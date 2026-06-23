# `_lock`

Acquires a multi-thread lock.

> [!IMPORTANT]
> This function is obsolete. Beginning in Visual Studio 2015, it is not available in the CRT.

## Syntax

```cpp
void __cdecl _lock(
   int locknum
);
```

#### Parameters

*`locknum`*\
[in] The identifier of the lock to acquire.

## Remarks

If the lock has already been acquired, this method acquires the lock anyway and causes an internal C run-time (CRT) error. If the method can't acquire a lock, it exits with a fatal error and sets the error code to `_RT_LOCK`.

## Requirements

**Source:** mlock.c

## See also

[Alphabetical function reference](./reference/crt-alphabetical-function-reference.md)\
[`_unlock`](./unlock.md)