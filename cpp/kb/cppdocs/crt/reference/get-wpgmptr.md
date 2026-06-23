# `_get_wpgmptr`

Gets the current value of the `_wpgmptr` global variable.

## Syntax

```C
errno_t _get_wpgmptr(
   wchar_t **pValue
);
```

### Parameters

*`pValue`*\
A pointer to a string to be filled with the current value of the `_wpgmptr` variable.

## Return value

Returns zero if successful; an error code on failure. If *`pValue`* is `NULL`, the invalid parameter handler is invoked as described in [Parameter validation](../parameter-validation.md). If execution is allowed to continue, this function sets `errno` to `EINVAL` and returns `EINVAL`.

## Remarks

Only call **`_get_wpgmptr`** if your program has a wide entry point, like **wmain()** or **wWinMain()**. The `_wpgmptr` global variable contains the full path to the executable associated with the process as a wide-character string. For more information, see [`_pgmptr`, `_wpgmptr`](../pgmptr-wpgmptr.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_get_wpgmptr`** | \<stdlib.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[`_get_pgmptr`](get-pgmptr.md)