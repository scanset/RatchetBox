# `_get_unexpected`

Returns the termination routine to be called by **`unexpected`**.

## Syntax

```C
unexpected_function _get_unexpected( void );
```

## Return value

Returns a pointer to the function registered by [`set_unexpected`](set-unexpected-crt.md). If no function has been set, the return value may be used to restore the default behavior; this value may be `NULL`.

## Requirements

| Routine | Required header |
|---|---|
| **`_get_unexpected`** | \<eh.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## See also

[Exception handling routines](../exception-handling-routines.md)\
[`abort`](abort.md)\
[`set_terminate`](set-terminate-crt.md)\
[`terminate`](terminate-crt.md)\
[`unexpected`](unexpected-crt.md)