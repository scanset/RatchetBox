# `puts`, `_putws`

Writes a string to `stdout`.

## Syntax

```C
int puts(
   const char *str
);
int _putws(
   const wchar_t *str
);
```

### Parameters

*`str`*\
Output string.

## Return value

Returns a nonnegative value if successful. If **`puts`** fails, it returns `EOF`; if **`_putws`** fails, it returns `WEOF`. If *`str`* is a null pointer, the invalid parameter handler is invoked, as described in [Parameter validation](../parameter-validation.md). If execution is allowed to continue, the functions set `errno` to `EINVAL` and return `EOF` or `WEOF`.

For information on these and other error codes, see [`errno`, `_doserrno`, `_sys_errlist`, and `_sys_nerr`](../errno-doserrno-sys-errlist-and-sys-nerr.md).

## Remarks

The **`puts`** function writes *`str`* to the standard output stream `stdout`, replacing the string's terminating null character ('\0') with a newline character ('\n') in the output stream.

**`_putws`** is the wide-character version of **`puts`**; the two functions behave identically if the stream is opened in ANSI mode. **`puts`** doesn't currently support output into a UNICODE stream.

`_putwch` writes Unicode characters using the current CONSOLE LOCALE setting.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

### Generic-text routine mappings

| TCHAR.H routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_putts` | **`puts`** | **`puts`** | **`_putws`** |

## Requirements

| Routine | Required header |
|---|---|
| **`puts`** | \<stdio.h> |
| **`_putws`** | \<stdio.h> |

The console isn't supported in Universal Windows Platform (UWP) apps. The standard stream handles that are associated with the console, `stdin`, `stdout`, and `stderr`, must be redirected before C run-time functions can use them in UWP apps. For more compatibility information, see [Compatibility](../compatibility.md).

## Libraries

All versions of the [C run-time libraries](../crt-library-features.md).

## Example

```C
// crt_puts.c
// This program uses puts to write a string to stdout.

#include <stdio.h>

int main( void )
{
   puts( "Hello world from puts!" );
}
```

### Output

```Output
Hello world from puts!
```

## See also

[Stream I/O](../stream-i-o.md)\
[`fputs`, `fputws`](fputs-fputws.md)\
[`fgets`, `fgetws`](fgets-fgetws.md)