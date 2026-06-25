# `_CrtGetDumpClient`

Retrieves the current application-defined function for dumping the `_CLIENT_BLOCK` type memory blocks (debug version only).

## Syntax

```C
_CRT_DUMP_CLIENT _CrtGetDumpClient( void );
```

## Return value

Returns the current dump routine.

## Remarks

The **`_CrtGetDumpClient`** function retrieves the current hook function for dumping objects stored in the `_CLIENT_BLOCK` memory blocks.

For more information about using other hook-capable run-time functions and writing your own client-defined hook functions, see [Debug hook function writing](../crt-debugging-techniques.md#debug-hook-function-writing).

## Requirements

| Routine | Required header |
|---|---|
| **`_CrtGetDumpClient`** | \<crtdbg.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Libraries

Debug versions of [C run-time libraries](../crt-library-features.md) only.

## See also

[Debug routines](../debug-routines.md)\
[`_CrtReportBlockType`](crtreportblocktype.md)\
[`_CrtSetDumpClient`](crtsetdumpclient.md)