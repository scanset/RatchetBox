# `_get_current_locale`

Gets a locale object representing the current locale.

## Syntax

```C
_locale_t _get_current_locale(void);
```

## Return value

A locale object representing the current locale.

## Remarks

The **`_get_current_locale`** function gets the currently set locale for the thread and returns a locale object representing that locale.

The previous name of this function, **`__get_current_locale`** (with two leading underscores) has been deprecated.

## Requirements

| Routine | Required header |
|---|---|
| **`_get_current_locale`** | \<locale.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[`setlocale`, `_wsetlocale`](setlocale-wsetlocale.md)\
[`_create_locale`, `_wcreate_locale`](create-locale-wcreate-locale.md)\
[`_free_locale`](free-locale.md)