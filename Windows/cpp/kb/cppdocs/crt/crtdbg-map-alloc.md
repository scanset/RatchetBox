# `_CRTDBG_MAP_ALLOC`

When the `_CRTDBG_MAP_ALLOC` flag is defined in the debug version of an application, the base versions of the heap functions are directly mapped to their debug versions. The flag is used in Crtdbg.h to do the mapping. This flag is only available when the [`_DEBUG`](./debug.md) flag has been defined in the application.

For more information about using the debug version versus the base version of a heap function, see [Debug versions of heap allocation functions](./debug-versions-of-heap-allocation-functions.md).

## See also

[Control flags](./control-flags.md)