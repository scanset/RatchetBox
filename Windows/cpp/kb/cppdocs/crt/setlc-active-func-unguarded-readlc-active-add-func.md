# `___setlc_active_func`, `___unguarded_readlc_active_add_func`

OBSOLETE. The CRT exports these internal functions only to preserve binary compatibility.

## Syntax

```cpp
int ___setlc_active_func(void);
int * ___unguarded_readlc_active_add_func(void);
```

## Return value

The value returned isn't significant.

## Remarks

Although the internal CRT functions **`___setlc_active_func`** and **`___unguarded_readlc_active_add_func`** are obsolete and no longer used, they're exported by the CRT library to preserve binary compatibility. The original purpose of **`___setlc_active_func`** was to return the number of currently active calls to the `setlocale` function. The original purpose of **`___unguarded_readlc_active_add_func`** was to return the number of functions that referenced the locale without locking it.

## Requirements

| Routine | Required header |
|---|---|
| **`___setlc_active_func`**, **`___unguarded_readlc_active_add_func`** | none |

## See also

[`setlocale`, `_wsetlocale`](./reference/setlocale-wsetlocale.md)