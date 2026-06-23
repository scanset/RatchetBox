# `_isatty`

Determines whether a file descriptor is associated with a character device.

## Syntax

```C
int _isatty( int fd );
```

### Parameters

*`fd`*\
File descriptor that refers to the device to be tested.

## Return value

**`_isatty`** returns a nonzero value if the descriptor is associated with a character device. Otherwise, **`_isatty`** returns 0.

## Remarks

The **`_isatty`** function determines whether *`fd`* is associated with a character device (a terminal, console, printer, or serial port).

This function validates the *`fd`* parameter. If *`fd`* is a bad file pointer, the invalid parameter handler is invoked, as described in [Parameter validation](../parameter-validation.md). If execution is allowed to continue, the function returns 0 and sets `errno` to `EBADF`.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_isatty`** | \<io.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Libraries

All versions of the [C run-time libraries](../crt-library-features.md).

## Example

```C
// crt_isatty.c
/* This program checks to see whether
* stdout has been redirected to a file.
*/

#include <stdio.h>
#include <io.h>

int main( void )
{
   if( _isatty( _fileno( stdout ) ) )
      printf( "stdout has not been redirected to a file\n" );
   else
      printf( "stdout has been redirected to a file\n");
}
```

### Sample output

```Output
stdout has not been redirected to a file
```

## See also

[File handling](../file-handling.md)