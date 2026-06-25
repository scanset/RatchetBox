# `_set_new_mode`

Sets a **`new`** handler mode for `malloc`.

## Syntax

```cpp
int _set_new_mode( int newhandlermode );
```

### Parameters

*`newhandlermode`*\
**`new`** handler mode for `malloc`; valid value is 0 or 1.

## Return value

Returns the previous handler mode set for `malloc`. A return value of 1 indicates that, on failure to allocate memory, `malloc` previously called the **`new`** handler routine; a return value of 0 indicates that it didn't. If the *`newhandlermode`* argument doesn't equal 0 or 1, returns -1.

## Remarks

The C++ **`_set_new_mode`** function sets the **`new`** handler mode for [`malloc`](malloc.md). The **`new`** handler mode indicates whether, on failure, `malloc` is to call the **`new`** handler routine as set by [`_set_new_handler`](set-new-handler.md). By default, `malloc` doesn't call the **`new`** handler routine on failure to allocate memory. You can override this default behavior so that, when `malloc` fails to allocate memory, `malloc` calls the **`new`** handler routine in the same way that the **`new`** operator does when it fails for the same reason. For more information, see the [`new`](../../cpp/new-operator-cpp.md) and [`delete`](../../cpp/delete-operator-cpp.md) operators in the *C++ Language Reference*. To override the default, call:

```cpp
_set_new_mode(1);
```

early in your program or link with Newmode.obj (see [Link options](../link-options.md)).

This function validates its parameter. If *`newhandlermode`* is anything other than 0 or 1, the function invokes the invalid parameter handler, as described in [Parameter validation](../parameter-validation.md). If execution is allowed to continue, <strong>_set_new_mode</strong> returns -1 and sets `errno` to `EINVAL`.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_set_new_mode`** | \<new.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Memory allocation](../memory-allocation.md)\
[`calloc`](calloc.md)\
[`free`](free.md)\
[`realloc`](realloc.md)\
[`_query_new_handler`](query-new-handler.md)\
[`_query_new_mode`](query-new-mode.md)