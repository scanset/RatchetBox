# `_WAIT_CHILD`, `_WAIT_GRANDCHILD`

## Syntax

```C
#include <process.h>
```

## Remarks

The `_cwait` function can be used by any process to wait for any other process (if the process ID is known). The action argument can be one of the following values:

| Constant | Meaning |
|---|---|
| `_WAIT_CHILD` | Calling process waits until specified new process terminates. |
| `_WAIT_GRANDCHILD` | Calling process waits until specified new process, and all processes created by that new process, terminate. |

## See also

[`_cwait`](./reference/cwait.md)\
[Global constants](./global-constants.md)