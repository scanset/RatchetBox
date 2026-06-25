# Sharing constants

Constants for file-sharing modes.

## Syntax

```C
#include <share.h>
```

## Remarks

The *`shflag`* argument determines the sharing mode, which consists of one or more manifest constants. These constants can be combined with the *`oflag`* arguments (see [File constants](./file-constants.md)).

The following table lists the constants and their meanings:

| Constant | Meaning |
|---|---|
| `_SH_DENYRW` | Denies read and write access to file |
| `_SH_DENYWR` | Denies write access to file |
| `_SH_DENYRD` | Denies read access to file |
| `_SH_DENYNO` | Permits read and write access |
| `_SH_SECURE` | Sets secure mode (shared read, exclusive write access). |

## See also

[`_sopen`, `_wsopen`](./reference/sopen-wsopen.md)\
[`_fsopen`, `_wfsopen`](./reference/fsopen-wfsopen.md)\
[Global constants](./global-constants.md)