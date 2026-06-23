# `quick_exit`

Causes normal program termination to occur.

## Syntax

```C
__declspec(noreturn) void quick_exit(
    int status
);
```

### Parameters

*`status`*\
The status code to return to the host environment.

## Return value

The **`quick_exit`** function can't return to its caller.

## Remarks

The **`quick_exit`** function causes normal program termination. It calls no functions registered by `atexit`, `_onexit` or signal handlers registered by the `signal` function. Behavior is undefined if **`quick_exit`** is called more than once, or if the `exit` function is also called.

The **`quick_exit`** function calls, in last-in, first-out (LIFO) order, the functions registered by `at_quick_exit`, except for those functions already called when the function was registered.  Behavior is undefined if a [`longjmp`](longjmp.md) call is made during a call to a registered function that would terminate the call to the  function.

After the registered functions have been called, **`quick_exit`** invokes `_Exit` by using the *`status`* value to return control to the host environment.

## Requirements

| Routine | Required header |
|---|---|
| **`quick_exit`** | \<process.h> or \<stdlib.h> |

For more information about compatibility, see [Compatibility](../compatibility.md).

## See also

[Process and environment control](../process-and-environment-control.md)\
[`abort`](abort.md)\
[`atexit`](atexit.md)\
[`_exec`, `_wexec` functions](../exec-wexec-functions.md)\
[`exit`, `_Exit`, `_exit`](exit-exit-exit.md)\
[`_onexit`, `_onexit_m`](onexit-onexit-m.md)\
[`_spawn`, `_wspawn` functions](../spawn-wspawn-functions.md)\
[`system`, `_wsystem`](system-wsystem.md)