# Constant and global variable mappings

These generic-text constant, global variable, and standard-type mappings are defined in TCHAR.H and depend on whether the constant `_UNICODE` or `_MBCS` has been defined in your program.

### Generic-text constant and global variable mappings

| Generic-text - object name | SBCS (`_UNICODE`, `_MBCS` not defined) | `_MBCS` defined | `_UNICODE` defined |
|---|---|---|---|
| `_TEOF` | `EOF` | `EOF` | `WEOF` |
| `_tenviron` | `_environ` | `_environ` | `_wenviron` |
| `_tpgmptr` | `_pgmptr` | `_pgmptr` | `_wpgmptr` |

## See also

[Generic-text mappings](./generic-text-mappings.md)\
[Data type mappings](./data-type-mappings.md)\
[Routine mappings](./routine-mappings.md)\
[A sample generic-text program](./a-sample-generic-text-program.md)\
[Using generic-text mappings](./using-generic-text-mappings.md)