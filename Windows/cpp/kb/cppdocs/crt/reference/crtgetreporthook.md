# `_CrtGetReportHook`

Retrieves the client-defined reporting function for hooking it into the C run time for the debug reporting process (debug version only).

## Syntax

```C
_CRT_REPORT_HOOK _CrtGetReportHook( void );
```

## Return value

Returns the current client-defined reporting function.

## Remarks

**`_CrtGetReportHook`** allows an application to retrieve the current reporting function for the C run-time debug library reporting process.

For more information about using other hook-capable run-time functions and writing your own client-defined hook functions, see [Debug hook function writing](../crt-debugging-techniques.md#debug-hook-function-writing).

## Requirements

| Routine | Required header |
|---|---|
| **`_CrtGetReportHook`** | \<crtdbg.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Libraries

Debug versions of [C run-time libraries](../crt-library-features.md) only.

## Example

For a sample of how to use `_CrtSetReportHook`, see [`report`](https://github.com/Microsoft/VCSamples/tree/master/VC2010Samples/crt/report).

## See also

[Debug routines](../debug-routines.md)\
[`_CrtSetReportHook`](crtsetreporthook.md)