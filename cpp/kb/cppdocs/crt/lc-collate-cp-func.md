# `___lc_collate_cp_func`

Internal CRT function. Retrieves the current collation code page of the thread.

## Syntax

```cpp
UINT ___lc_codepage_func(void);
```

## Return value

The current collation code page of the thread.

## Remarks

**`___lc_collate_cp_func`** is an internal CRT function that is used by other CRT functions to get the current collation code page from the thread local storage for CRT data. This information is also available by using the [`_get_current_locale`](./reference/get-current-locale.md) function.

Internal CRT functions are implementation-specific and subject to change with each release. We don't recommend their use in your code.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`___lc_collate_cp_func`** | crt\src\setlocal.h |

## See also

[`_get_current_locale`](./reference/get-current-locale.md)\
[`setlocale`, `_wsetlocale`](./reference/setlocale-wsetlocale.md)\
[`_create_locale`, `_wcreate_locale`](./reference/create-locale-wcreate-locale.md)\
[`_free_locale`](./reference/free-locale.md)