# `_get_terminate`

Returns the termination routine to be called by `terminate`.

## Syntax

```C
terminate_function _get_terminate( void );
```

## Return value

Returns a pointer to the function registered by [`set_terminate`](set-terminate-crt.md). If no function has been set, the return value may be used to restore the default behavior; this value may be `NULL`.

## Remarks

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_get_terminate`** | \<eh.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Exception handling routines](../exception-handling-routines.md)\
[`abort`](abort.md)\
[`set_unexpected`](set-unexpected-crt.md)\
[`terminate`](terminate-crt.md)\
[`unexpected`](unexpected-crt.md)