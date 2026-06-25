# `signal` constants

## Syntax

```C
#include <signal.h>
```

## Remarks

The `sig` argument must be one of the manifest constants listed below (defined in SIGNAL.H).

| Constant | Description |
|---|---|
| `SIGABRT` | Abnormal termination. The default action terminates the calling program with exit code 3. |
| `SIGABRT_COMPAT` | Same meaning as `SIGABRT`. For compatibility with other platforms. |
| `SIGFPE` | Floating-point error, such as overflow, division by zero, or invalid operation. The default action terminates the calling program. |
| `SIGILL` | Illegal instruction. The default action terminates the calling program. |
| `SIGINT` | CTRL+C interrupt. The default action terminates the calling program with exit code 3. |
| `SIGSEGV` | Illegal storage access. The default action terminates the calling program. |
| `SIGTERM` | Termination request sent to the program. The default action terminates the calling program with exit code 3. |
| `SIG_ERR` | A return type from a signal indicating an error has occurred. |

## See also

[`signal`](./reference/signal.md)\
[`raise`](./reference/raise.md)\
[Global constants](./global-constants.md)