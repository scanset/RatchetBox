# `_query_new_mode`

Returns an integer indicating the **`new`** handler mode set by `_set_new_mode` for `malloc`.

## Syntax

```C
int _query_new_mode(
   void
);
```

## Return value

Returns the current **`new`** handler mode, namely 0 or 1, for `malloc`. A return value of 1 indicates that, on failure to allocate memory, `malloc` calls the **`new`** handler routine; a return value of 0 indicates that it doesn't.

## Remarks

The C++ **`_query_new_mode`** function returns an integer that indicates the **`new`** handler mode that is set by the C++ [`_set_new_mode`](set-new-mode.md) function for [`malloc`](malloc.md). The **`new`** handler mode indicates whether, on failure to allocate memory, `malloc` is to call the **`new`** handler routine as set by [`_set_new_handler`](set-new-handler.md). By default, `malloc` doesn't call the **`new`** handler routine on failure. You can use `_set_new_mode` to override this behavior so that on failure `malloc` calls the **`new`** handler routine in the same way that the **`new`** operator does when it fails to allocate memory. For more information, see the discussion of the [new and delete operators](../../cpp/new-and-delete-operators.md) in the C++ Language Reference.

## Requirements

| Routine | Required header |
|---|---|
| **`_query_new_mode`** | \<new.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Libraries

All versions of the [C run-time libraries](../crt-library-features.md).

## See also

[Memory allocation](../memory-allocation.md)\
[`calloc`](calloc.md)\
[`free`](free.md)\
[`realloc`](realloc.md)\
[`_query_new_handler`](query-new-handler.md)