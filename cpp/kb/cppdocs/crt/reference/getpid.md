# `_getpid`

Gets the process identification.

> [!IMPORTANT]
> This API cannot be used in applications that execute in the Windows Runtime. For more information, see [CRT functions not supported in Universal Windows Platform apps](../../cppcx/crt-functions-not-supported-in-universal-windows-platform-apps.md).

## Syntax

```C
int _getpid( void );
```

## Return value

Returns the process ID obtained from the system. There's no error return.

## Remarks

The **`_getpid`** function obtains the process ID from the system. The process ID uniquely identifies the calling process.

## Requirements

| Routine | Required header |
|---|---|
| **`_getpid`** | `<process.h>` |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_getpid.c
// This program uses _getpid to obtain
// the process ID and then prints the ID.

#include <stdio.h>
#include <process.h>

int main( void )
{
   // If run from command line, shows different ID for
   // command line than for operating system shell.

   printf( "Process id: %d\n", _getpid() );
}
```

```Output
Process id: 3584
```

## See also

[Process and environment control](../process-and-environment-control.md)\
[`_mktemp`, `_wmktemp`](mktemp-wmktemp.md)