# `_CrtGetAllocHook`

Retrieves the current client-defined allocation function for hooking into the C run-time debug memory allocation process (debug version only).

## Syntax

```C
_CRT_ALLOC_HOOK _CrtGetAllocHook( void );
```

## Return value

Returns the currently defined allocation hook function.

## Remarks

**`_CrtGetAllocHook`** retrieves the current client-defined application hook function for the C run-time debug library memory allocation process.

For more information about using other hook-capable run-time functions and writing your own client-defined hook functions, see [Debug hook function writing](../crt-debugging-techniques.md#debug-hook-function-writing).

## Requirements

| Routine | Required header |
|---|---|
| **`_CrtGetAllocHook`** | \<crtdbg.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Libraries

Debug versions of [C run-time libraries](../crt-library-features.md) only.

## See also

[Debug routines](../debug-routines.md)\
[`_CrtSetAllocHook`](crtsetallochook.md)