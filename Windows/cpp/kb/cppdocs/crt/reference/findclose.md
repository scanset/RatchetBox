# `_findclose`

Closes the specified search handle and releases associated resources.

## Syntax

```C
int _findclose(
   intptr_t handle
);
```

### Parameters

*`handle`*\
The search handle returned by a previous call to `_findfirst`.

## Return value

If successful, **`_findclose`** returns 0. Otherwise, it returns -1 and sets `errno` to `ENOENT`, indicating that no more matching files could be found.

## Remarks

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Function | Required header |
|---|---|
| **`_findclose`** | \<io.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[System calls](../system-calls.md)\
[Filename search functions](../filename-search-functions.md)