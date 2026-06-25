# `__p__fmode`

Points to the `_fmode` global variable, which specifies the default *file translation mode* for file I/O operations.

## Syntax

```cpp
int* __p__fmode(
   );
```

## Return value

Pointer to the `_fmode` global variable.

## Remarks

The **`__p__fmode`** function is for internal use only, and shouldn't be called from user code.

File translation mode specifies either `binary` or `text` translation for [`_open`](./reference/open-wopen.md) and [`_pipe`](./reference/pipe.md) I/O operations. For more information, see [`_fmode`](./fmode.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`__p__fmode`** | `<stdlib.h>` |