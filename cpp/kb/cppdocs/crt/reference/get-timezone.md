# `_get_timezone`

Retrieves the difference in seconds between coordinated universal time (UTC) and local time.

## Syntax

```C
error_t _get_timezone(
    long* seconds
);
```

### Parameters

*`seconds`*\
The difference in seconds between UTC and local time.

## Return value

Zero if successful or an `errno` value if an error occurs.

## Remarks

The **`_get_timezone`** function retrieves the difference in seconds between UTC and local time as an integer. The default value is 28,800 seconds, for Pacific Standard Time (eight hours behind UTC). If you don't want the default value, call _tzset first to initialize the timezone.

If *`seconds`* is `NULL`, the invalid parameter handler is invoked, as described in [Parameter validation](../parameter-validation.md). If execution is allowed to continue, this function sets `errno` to `EINVAL` and returns `EINVAL`.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_get_timezone`** | \<time.h> |

For more information, see [Compatibility](../compatibility.md).

## See also

[Time management](../time-management.md)\
[`errno`, `_doserrno`, `_sys_errlist`, and `_sys_nerr`](../errno-doserrno-sys-errlist-and-sys-nerr.md)\
[`_get_daylight`](get-daylight.md)\
[`_get_dstbias`](get-dstbias.md)\
[`_get_tzname`](get-tzname.md)