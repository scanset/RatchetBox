# `__p__commode`

Points to the `_commode` global variable, which specifies the default *file commit mode* for file I/O operations.

## Syntax

```cpp
int * __p__commode(
   );
```

## Return value

Pointer to the `_commode` global variable.

## Remarks

The **`__p__commode`** function is for internal use only, and shouldn't be called from user code.

File commit mode specifies when critical data is written to disk. For more information, see [`fflush`](./reference/fflush.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`__p__commode`** | `internal.h` |