# `_unlock_file`

Unlocks a file, allowing other processes to access the file.

## Syntax

```C
void _unlock_file(
   FILE* file
);
```

### Parameters

*`file`*\
File handle.

## Remarks

The **`_unlock_file`** function unlocks the file specified by *`file`*. Unlocking a file allows access to the file by other processes. This function shouldn't be called unless `_lock_file` was previously called on the *`file`* pointer. Calling **`_unlock_file`** on a file that isn't locked may result in a deadlock. For an example, see [`_lock_file`](lock-file.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_unlock_file`** | \<stdio.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[File handling](../file-handling.md)\
[`_creat`, `_wcreat`](creat-wcreat.md)\
[`_open`, `_wopen`](open-wopen.md)\
[`_lock_file`](lock-file.md)