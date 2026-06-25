# `_query_new_handler`

Returns the address of the current **`new`** handler routine.

## Syntax

```C
_PNH _query_new_handler(
   void
);
```

## Return value

Returns the address of the current **`new`** handler routine as set by `_set_new_handler`.

## Remarks

The C++ **`_query_new_handler`** function returns the address of the current exception-handling function set by the C++ [`_set_new_handler`](set-new-handler.md) function. `_set_new_handler` is used to specify an exception-handling function that is to gain control if the **`new`** operator fails to allocate memory. For more information, see the discussion of the [`new` and `delete` operators](../../cpp/new-and-delete-operators.md) in the C++ Language Reference.

## Requirements

| Routine | Required header |
|---|---|
| **`_query_new_handler`** | \<new.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Libraries

All versions of the [C run-time libraries](../crt-library-features.md).

## See also

[Memory allocation](../memory-allocation.md)\
[`free`](free.md)