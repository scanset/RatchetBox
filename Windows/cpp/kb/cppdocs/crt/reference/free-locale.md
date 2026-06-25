# `_free_locale`

Frees a locale object.

## Syntax

```C
void _free_locale(
   _locale_t locale
);
```

### Parameters

*`locale`*\
Locale object to free.

## Remarks

The **`_free_locale`** function is used to free the locale object obtained from a call to `_get_current_locale` or `_create_locale`.

The previous name of this function, **`__free_locale`** (with two leading underscores) has been deprecated.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| `Routine` | Required header |
|---|---|
| **`_free_locale`** | \<locale.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[`_get_current_locale`](get-current-locale.md)\
[`_create_locale`, `_wcreate_locale`](create-locale-wcreate-locale.md)