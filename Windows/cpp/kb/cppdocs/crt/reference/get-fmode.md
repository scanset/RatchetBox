# `_get_fmode`

Gets the default file translation mode for file I/O operations.

## Syntax

```C
errno_t _get_fmode(
   int * pmode
);
```

### Parameters

*`pmode`*\
A pointer to an integer to be filled with the current default mode: `_O_TEXT` or `_O_BINARY`.

## Return value

Returns zero if successful; an error code on failure. If *`pmode`* is `NULL`, the invalid parameter handler is invoked as described in [Parameter validation](../parameter-validation.md). If execution is allowed to continue, `errno` is set to `EINVAL` and the function returns `EINVAL`.

## Remarks

The function gets the value of the [`_fmode`](../fmode.md) global variable. This variable specifies the default file translation mode for both low-level and stream file I/O operations, such as `_open`, `_pipe`, `fopen`, and [`freopen`](freopen-wfreopen.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header | Optional header |
|---|---|---|
| **`_get_fmode`** | \<stdlib.h> | \<fcntl.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

See the example in [`_set_fmode`](set-fmode.md).

## See also

[`_fmode`](../fmode.md)\
[`_set_fmode`](set-fmode.md)\
[`_setmode`](setmode.md)\
[Text and binary mode file I/O](../text-and-binary-mode-file-i-o.md)