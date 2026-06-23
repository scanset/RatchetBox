# `_crtDbgFlag`

The **`_crtDbgFlag`** flag consists of five bit-fields that control how memory allocations on the debug version of the heap are tracked, verified, reported, and dumped. The bit fields of the flag are set using the [`_CrtSetDbgFlag`](./reference/crtsetdbgflag.md) function. This flag and its bit fields are declared in Crtdbg.h. This flag is only available when the [`_DEBUG`](./debug.md) flag has been defined in the application.

For more information about using this flag along with other debug functions, see [Heap state reporting functions](./crt-debug-heap-details.md#heap-state-reporting-functions).

## See also

[Control flags](./control-flags.md)