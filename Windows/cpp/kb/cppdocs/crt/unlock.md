# `_unlock`

Releases a multi-thread lock.

> [!IMPORTANT]
> This function is obsolete. Beginning in Visual Studio 2015, it is not available in the CRT.

## Syntax

```cpp
void __cdecl _unlock(
   int locknum
);
```

#### Parameters

*`locknum`*\
[in] The identifier of the lock to release.

## Requirements

**Source:** mlock.c

## See also

[Alphabetical function reference](./reference/crt-alphabetical-function-reference.md)\
[`_lock`](./lock.md)