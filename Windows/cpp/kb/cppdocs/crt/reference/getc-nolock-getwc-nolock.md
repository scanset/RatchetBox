# `_getc_nolock`, `_getwc_nolock`

Reads a character from a stream without locking.

## Syntax

```C
int _getc_nolock(
   FILE *stream
);
wint_t _getwc_nolock(
   FILE *stream
);
```

### Parameters

*`stream`*\
Input stream.

## Return value

See [`getc`, `getwc`](getc-getwc.md).

## Remarks

These functions are identical to `getc` and `getwc` except that they don't lock the calling thread. They might be faster because they don't incur the overhead of locking out other threads. Use these functions only in thread-safe contexts such as single-threaded applications or where the calling scope already handles thread isolation.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

### Generic-text routine mappings

| Tchar.h routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_gettc_nolock` | **`getc_nolock`** | **`getc_nolock`** | **`getwc_nolock`** |

## Requirements

| Routine | Required header |
|---|---|
| **`getc_nolock`** | \<stdio.h> |
| **`getwc_nolock`** | \<stdio.h> or \<wchar.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_getc_nolock.c
// Use getc to read a line from a file.

#include <stdio.h>

int main()
{
    char buffer[81];
    int i, ch;
    FILE* fp;

    // Read a single line from the file "crt_getc_nolock.txt".
    fopen_s(&fp, "crt_getc_nolock.txt", "r");
    if (!fp)
    {
       printf("Failed to open file crt_getc_nolock.txt.\n");
       exit(1);
    }

    for (i = 0; (i < 80) && ((ch = getc(fp)) != EOF)
                         && (ch != '\n'); i++)
    {
        buffer[i] = (char) ch;
    }

    // Terminate string with a null character
    buffer[i] = '\0';
    printf( "Input was: %s\n", buffer);

    fclose(fp);
}
```

### Input: crt_getc_nolock.txt

```Input
Line the first.
Line the second.
```

### Output

```Output
Input was: Line the first.
```

## See also

[Stream I/O](../stream-i-o.md)\
[`fgetc`, `fgetwc`](fgetc-fgetwc.md)\
[`_getch`, `_getwch`](getch-getwch.md)\
[`putc`, `putwc`](putc-putwc.md)\
[`ungetc`, `ungetwc`](ungetc-ungetwc.md)