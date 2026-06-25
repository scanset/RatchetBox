# `___lc_codepage_func`

Internal CRT function. Retrieves the current code page of the thread.

## Syntax

```cpp
UINT ___lc_codepage_func(void);
```

## Return value

The current code page of the thread.

## Remarks

**`___lc_codepage_func`** is an internal CRT function that is used by other CRT functions to get the current code page from the thread local storage for CRT data. This information is also available by using the [`_get_current_locale`](./reference/get-current-locale.md) function.

A *code page* is a mapping of single-byte or double-byte codes to individual characters. Different code pages include different special characters, typically customized for a language or a group of languages. For more information about code pages, see [Code pages](./code-pages.md).

Internal CRT functions are implementation-specific and subject to change with each release. We don't recommend their use in your code.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`___lc_codepage_func`** | `crt\src\setlocal.h` |

## See also

[`_get_current_locale`](./reference/get-current-locale.md)\
[`setlocale`, `_wsetlocale`](./reference/setlocale-wsetlocale.md)\
[`_create_locale`, `_wcreate_locale`](./reference/create-locale-wcreate-locale.md)\
[`_free_locale`](./reference/free-locale.md)