# Control flags

The debug version of the Microsoft C run-time library uses the following flags to control the heap allocation and reporting process. For more information, see [CRT debugging techniques](./crt-debugging-techniques.md).

| Flag | Description |
|---|---|
| [`_CRTDBG_MAP_ALLOC`](./crtdbg-map-alloc.md) | Maps the base heap functions to their debug version counterparts |
| [`_DEBUG`](./debug.md) | Enables the use of the debugging versions of the run-time functions |
| [`_crtDbgFlag`](./crtdbgflag.md) | Controls how the debug heap manager tracks allocations |

These flags can be defined with a /D command-line option or with a `#define` directive. When the flag is defined with `#define`, the directive must appear before the header file `#include` directive for the routine declarations.

## See also

[Global variables and standard types](./global-variables-and-standard-types.md)