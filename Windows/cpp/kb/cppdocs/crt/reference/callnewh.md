# `_callnewh`

Calls the currently installed *`new` handler*.

## Syntax

```cpp
int _callnewh(
   size_t size
   )
```

### Parameters

*`size`*\
The amount of memory that the [`new` operator](../../cpp/new-operator-cpp.md) tried to allocate.

## Return value

| Value | Description |
|---|---|
| 0 | Failure: Either no `new` handler is installed or no `new` handler is active. |
| 1 | Success: The `new` handler is installed and active. The memory allocation can be retried. |

## Exceptions

This function throws [`bad_alloc`](../../standard-library/bad-alloc-class.md) if the *`new` handler* can't be located.

## Remarks

The *`new` handler* is called if the [`new` operator](../../cpp/new-operator-cpp.md) fails to successfully allocate memory. The `new` handler might then initiate some appropriate action, such as freeing memory so that subsequent allocations succeed.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| `_callnewh` | internal.h |

## See also

[`_set_new_handler`](set-new-handler.md)\
[`_set_new_mode`](set-new-mode.md)