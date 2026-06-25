# `_putchar_nolock`, `_putwchar_nolock`

Writes a character to `stdout` without locking.

## Syntax

```C
int _putchar_nolock(
   int c
);
wint_t _putwchar_nolock(
   wchar_t c
);
```

### Parameters

*`c`*\
Character to be written.

## Return value

See **putchar, putwchar**.

## Remarks

**`putchar_nolock`** and **`_putwchar_nolock`** are identical to the versions without the `_nolock` suffix except that they aren't protected from interference by other threads. They might be faster because they don't incur the overhead of locking out other threads. Use these functions only in thread-safe contexts such as single-threaded applications or where the calling scope already handles thread isolation.

### Generic-text routine mappings

| Tchar.h routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_puttchar_nolock` | **`_putchar_nolock`** | **`_putchar_nolock`** | **`_putwchar_nolock`** |

## Requirements

| Routine | Required header |
|---|---|
| **`_putchar_nolock`** | \<stdio.h> |
| **`_putwchar_nolock`** | \<stdio.h> or \<wchar.h> |

The console isn't supported in Universal Windows Platform (UWP) apps. The standard stream handles that are associated with the console, `stdin`, `stdout`, and `stderr`, must be redirected before C run-time functions can use them in UWP apps. For more compatibility information, see [Compatibility](../compatibility.md).

## Libraries

All versions of the [C run-time libraries](../crt-library-features.md).

## Example

```C
// crt_putchar_nolock.c
/* This program uses putchar to write buffer
* to stdout. If an error occurs, the program
* stops before writing the entire buffer.
*/

#include <stdio.h>

int main( void )
{
   FILE *stream;
   char *p, buffer[] = "This is the line of output\n";
   int  ch;

   ch = 0;

   for( p = buffer; (ch != EOF) && (*p != '\0'); p++ )
      ch = _putchar_nolock( *p );
}
```

### Output

```Output
This is the line of output
```

## See also

[Stream I/O](../stream-i-o.md)\
[`fputc`, `fputwc`](fputc-fputwc.md)\
[`fgetc`, `fgetwc`](fgetc-fgetwc.md)