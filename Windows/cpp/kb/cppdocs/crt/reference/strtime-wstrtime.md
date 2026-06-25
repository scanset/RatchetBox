# `_strtime`, `_wstrtime`

Copy the time to a buffer. More secure versions of these functions are available; see [`_strtime_s`, `_wstrtime_s`](strtime-s-wstrtime-s.md).

## Syntax

```C
char *_strtime(
   char *timestr
);
wchar_t *_wstrtime(
   wchar_t *timestr
);
template <size_t size>
char *_strtime(
   char (&timestr)[size]
); // C++ only
template <size_t size>
wchar_t *_wstrtime(
   wchar_t (&timestr)[size]
); // C++ only
```

### Parameters

*`timestr`*\
Time string.

## Return value

Returns a pointer to the resulting character string *`timestr`*.

## Remarks

The **`_strtime`** function copies the current local time into the buffer pointed to by *`timestr`*. The time is formatted as *`hh:mm:ss`*, where *`hh`* is two digits that represent the hour in 24-hour notation. *`mm`* is two digits for the minutes past the hour, and *`ss`* is two digits for seconds. For example, the string *`18:23:44`* represents 23 minutes and 44 seconds after 6 P.M. The buffer must be at least 9 bytes long.

**`_wstrtime`** is a wide-character version of **`_strtime`**; the argument and return value of **`_wstrtime`** are wide-character strings. These functions behave identically otherwise. If *`timestr`* is a `NULL` pointer or if *`timestr`* is formatted incorrectly, the invalid parameter handler is invoked, as described in [Parameter validation](../parameter-validation.md). If the exception is allowed to continue, these functions return a `NULL`, and set `errno` to `EINVAL` if *`timestr`* was a `NULL` or set `errno` to `ERANGE` if *`timestr`* is formatted incorrectly.

In C++, these functions have template overloads that invoke the newer, secure counterparts of these functions. For more information, see [Secure template overloads](../secure-template-overloads.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

### Generic-text routine mappings

| TCHAR.H routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_tstrtime` | **`_strtime`** | **`_strtime`** | **`_wstrtime`** |

## Requirements

| Routine | Required header |
|---|---|
| **`_strtime`** | \<time.h> |
| **`_wstrtime`** | \<time.h> or \<wchar.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_strtime.c
// compile with: /W3

#include <time.h>
#include <stdio.h>

int main( void )
{
   char tbuffer [9];
   _strtime( tbuffer ); // C4996
   // Note: _strtime is deprecated; consider using _strtime_s instead
   printf( "The current time is %s \n", tbuffer );
}
```

```Output
The current time is 14:21:44
```

## See also

[Time management](../time-management.md)\
[`asctime`, `_wasctime`](asctime-wasctime.md)\
[`ctime`, `_ctime32`, `_ctime64`, `_wctime`, `_wctime32`, `_wctime64`](ctime-ctime32-ctime64-wctime-wctime32-wctime64.md)\
[`gmtime`, `_gmtime32`, `_gmtime64`](gmtime-gmtime32-gmtime64.md)\
[`localtime`, `_localtime32`, `_localtime64`](localtime-localtime32-localtime64.md)\
[`mktime`, `_mktime32`, `_mktime64`](mktime-mktime32-mktime64.md)\
[`time`, `_time32`, `_time64`](time-time32-time64.md)\
[`_tzset`](tzset.md)