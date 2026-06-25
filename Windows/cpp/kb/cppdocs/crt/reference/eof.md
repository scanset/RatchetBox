# `_eof`

Tests for end of file (EOF).

## Syntax

```C
int _eof(
   int fd
);
```

### Parameters

*`fd`*\
File descriptor referring to the open file.

## Return value

**`_eof`** returns 1 if the current position is end of file, or 0 if it isn't. A return value of -1 indicates an error; in this case, the invalid parameter handler is invoked, as described in [Parameter validation](../parameter-validation.md). If execution is allowed to continue, `errno` is set to `EBADF`, which indicates an invalid file descriptor.

## Remarks

The **`_eof`** function determines whether the end of the file associated with *`fd`* has been reached.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Function | Required header | Optional header |
|---|---|---|
| **`_eof`** | \<io.h> | \<errno.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_eof.c
// This program reads data from a file
// ten bytes at a time until the end of the
// file is reached or an error is encountered.
//
#include <io.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <share.h>

int main( void )
{
   int  fh, count, total = 0;
   char buf[10];
   if( _sopen_s( &fh, "crt_eof.txt", _O_RDONLY, _SH_DENYNO, 0 ) )
   {
        perror( "Open failed");
        exit( 1 );
   }
   // Cycle until end of file reached:
   while( !_eof( fh ) )
   {
      // Attempt to read in 10 bytes:
      if( (count = _read( fh, buf, 10 )) == -1 )
      {
         perror( "Read error" );
         break;
      }
      // Total actual bytes read
      total += count;
   }
   printf( "Number of bytes read = %d\n", total );
   _close( fh );
}
```

### Input: crt_eof.txt

```Input
This file contains some text.
```

### Output

```Output
Number of bytes read = 29
```

## See also

[Error handling](../error-handling-crt.md)\
[Low-level I/O](../low-level-i-o.md)\
[`clearerr`](clearerr.md)\
[`feof`](feof.md)\
[`ferror`](ferror.md)\
[`perror`, `_wperror`](perror-wperror.md)