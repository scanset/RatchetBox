# `_set_doserrno`

Sets the value of the [`_doserrno`](../errno-doserrno-sys-errlist-and-sys-nerr.md) global variable.

## Syntax

```C
errno_t _set_doserrno( int error_value );
```

### Parameters

*`error_value`*\
The new value of `_doserrno`.

## Return value

Returns zero if successful.

## Remarks

Possible values are defined in Errno.h.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header | Optional header |
|---|---|---|
| **`_set_doserrno`** | \<stdlib.h> | \<errno.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[`_get_doserrno`](get-doserrno.md)\
[`errno`, `_doserrno`, `_sys_errlist`, and `_sys_nerr`](../errno-doserrno-sys-errlist-and-sys-nerr.md)