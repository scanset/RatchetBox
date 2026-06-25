# `spawn` constants

## Syntax

```C
#include <process.h>
```

## Remarks

The `mode` argument determines the action taken by the calling process before and during a spawn operation. The following values for `mode` are possible:

| Constant | Meaning |
|---|---|
| `_P_OVERLAY` | Overlays calling process with new process, destroying calling process (same effect as `_exec` calls). |
| `_P_WAIT` | Suspends calling thread until execution of new process is complete (synchronous `_spawn`). |
| `_P_NOWAIT`, `_P_NOWAITO` | Continues to execute calling process concurrently with new process (asynchronous `_spawn`). |
| `_P_DETACH` | Continues to execute calling process; new process is run in background with no access to console or keyboard. Calls to `_cwait` against new process will fail. This `_spawn` is asynchronous. |

## See also

[`_spawn`, `_wspawn` functions](./spawn-wspawn-functions.md)\
[Global constants](./global-constants.md)