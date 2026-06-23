# Exception handling routines

Use the C++ exception-handling functions to recover from unexpected events during program execution.

## Exception-handling functions

| Function | Use |
|---|---|
| [`_set_se_translator`](./reference/set-se-translator.md) | Handle Win32 exceptions (C structured exceptions) as C++ typed exceptions |
| [`set_terminate`](./reference/set-terminate-crt.md) | Install your own termination routine to be called by `terminate` |
| [`set_unexpected`](./reference/set-unexpected-crt.md) | Install your own termination function to be called by `unexpected` |
| [`terminate`](./reference/terminate-crt.md) | Called automatically under certain circumstances after exception is thrown. The `terminate` function calls `abort` or a function you specify using `set_terminate` |
| [`unexpected`](./reference/unexpected-crt.md) | Calls `terminate` or a function you specify using `set_unexpected`. The `unexpected` function isn't used in current Microsoft C++ exception-handling implementation |

## See also

[Universal C runtime routines by category](./run-time-routines-by-category.md)