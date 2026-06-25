# File Position Errors

**ANSI 4.9.9.1, 4.9.9.4** The value to which the macro `errno` is set by the `fgetpos` or `ftell` function on failure

When `fgetpos` or `ftell` fails, `errno` is set to the manifest constant `EINVAL` if the position is invalid or `EBADF` if the file number is bad. The constants are defined in ERRNO.H.

## See also

[Library Functions](../c-language/library-functions.md)