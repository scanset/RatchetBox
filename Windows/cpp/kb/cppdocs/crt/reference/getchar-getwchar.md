# `getchar`, `getwchar`

Reads a character from standard input.

## Syntax

```C
int getchar();
wint_t getwchar();
```

## Return value

Returns the character read. These functions wait for input and don't return until input is available.

To indicate a read error or end-of-file condition, **`getchar`** returns `EOF`, and **`getwchar`** returns `WEOF`. For **`getchar`**, use **`ferror`** or **`feof`** to check for an error or for end of file.

## Remarks

Each routine reads a single character from **`stdin`** and increments the associated file pointer to point to the next character. **`getchar`** is the same as [`_fgetchar`](fgetc-fgetwc.md), but it's implemented as a function and as a macro.

These functions also lock the calling thread and are thread-safe. For a non-locking version, see [`_getchar_nolock`, `_getwchar_nolock`](getchar-nolock-getwchar-nolock.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

### Generic-text routine mappings

| `TCHAR.H` routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_gettchar` | **`getchar`** | **`getchar`** | **`getwchar`** |

## Requirements

| Routine | Required header |
|---|---|
| **`getchar`** | `<stdio.h>` |
| **`getwchar`** | `<stdio.h>` or `<wchar.h>` |

The console isn't supported in Universal Windows Platform (UWP) apps. The standard stream handles that are associated with the console, **`stdin`**, **`stdout`**, and **`stderr`**, must be redirected before C run-time functions can use them in UWP apps. For more compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_getchar.c
// Use getchar to read a line from stdin.

#include <stdio.h>

int main()
{
    char buffer[81];
    int i, ch;

    for (i = 0; (i < 80) && ((ch = getchar()) != EOF)
                         && (ch != '\n'); i++)
    {
        buffer[i] = (char) ch;
    }

    // Terminate string with a null character
    buffer[i] = '\0';
    printf( "Input was: %s\n", buffer);
}
```

```Output

This textInput was: This text
```

## See also

[Stream I/O](../stream-i-o.md)\
[`getc`, `getwc`](getc-getwc.md)\
[`fgetc`, `fgetwc`](fgetc-fgetwc.md)\
[`_getch`, `_getwch`](getch-getwch.md)\
[`putc`, `putwc`](putc-putwc.md)\
[`ungetc`, `ungetwc`](ungetc-ungetwc.md)