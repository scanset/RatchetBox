# `_fgetc_nolock`, `_fgetwc_nolock`

Reads a character from a stream without locking.

## Syntax

```C
int _fgetc_nolock(
   FILE *stream
);
wint_t _fgetwc_nolock(
   FILE *stream
);
```

### Parameters

*`stream`*\
Pointer to the `FILE` structure.

## Return value

See[`fgetc`, `fgetwc`](fgetc-fgetwc.md).

## Remarks

**`_fgetc_nolock`** and **`_fgetwc_nolock`** are identical to `fgetc` and `fgetwc`, respectively, except that they aren't protected from interference by other threads. They might be faster because they don't incur the overhead of locking out other threads. Use these functions only in thread-safe contexts such as single-threaded applications or where the calling scope already handles thread isolation.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

### Generic-text routine mappings

| Tchar.h routine | `_UNICODE` and `_MBCS` not defined | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| **`_fgettc_nolock`** | **`_fgetc_nolock`** | **`_fgetc_nolock`** | **`_fgetwc_nolock`** |

## Requirements

| Function | Required header |
|---|---|
| **`_fgetc_nolock`** | \<stdio.h> |
| **`_fgetwc_nolock`** | \<stdio.h> or \<wchar.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_fgetc_nolock.c
// This program uses getc to read the first
// 80 input characters (or until the end of input)
// and place them into a string named buffer.

#include <stdio.h>
#include <stdlib.h>

int main( void )
{
   FILE *stream;
   char buffer[81];
   int  i, ch;

   // Open file to read line from:
   if( fopen_s( &stream, "crt_fgetc_nolock.txt", "r" ) != 0 )
      exit( 0 );

   // Read in first 80 characters and place them in "buffer":
   ch = fgetc( stream );
   for( i=0; (i < 80 ) && ( feof( stream ) == 0 ); i++ )
   {
      buffer[i] = (char)ch;
      ch = _fgetc_nolock( stream );
   }

   // Add null to end string
   buffer[i] = '\0';
   printf( "%s\n", buffer );
   fclose( stream );
}
```

## Input: crt_fgetc_nolock.txt

```Input
Line one.
Line two.
```

### Output

```Output
Line one.
Line two.
```

## See also

[Stream I/O](../stream-i-o.md)\
[`fputc`, `fputwc`](fputc-fputwc.md)\
[`getc`, `getwc`](getc-getwc.md)