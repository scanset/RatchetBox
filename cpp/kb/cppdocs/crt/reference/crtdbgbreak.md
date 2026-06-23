# `_CrtDbgBreak`

Sets a break point on a particular line of code. (Used in debug mode only.)

## Syntax

```C
void _CrtDbgBreak( void );
```

## Return value

There's no return value.

## Remarks

The **`_CrtDbgBreak`** function sets a debug breakpoint on the particular line of code where the function resides. This function is used in debug mode only and is dependent on `_DEBUG` being previously defined.

For more information about using other hook-capable run-time functions and writing your own client-defined hook functions, see [Writing your own debug hook functions](../crt-debugging-techniques.md#debug-hook-function-writing).

## Requirements

| Routine | Required header |
|---|---|
| **`_CrtDbgBreak`** | \<CRTDBG.h> |

## Libraries

Debug versions of [C run-time libraries](../crt-library-features.md) only.

## See also

[Debug routines](../debug-routines.md)\
[`__debugbreak`](../../intrinsics/debugbreak.md)