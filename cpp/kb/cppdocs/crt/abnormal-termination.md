# `_abnormal_termination`

Indicates whether the **`__finally`** block of a [try-finally statement](../cpp/try-finally-statement.md) is entered while the system is executing an internal list of termination handlers.

## Syntax

```cpp
int   _abnormal_termination(
   );
```

## Return value

**`true`** if the system is unwinding the stack; otherwise, **`false`**.

## Remarks

**`_abnormal_termination`** is an internal function used to manage unwinding exceptions, and isn't intended to be called from user code.

## Requirements

| Routine | Required header |
|---|---|
| **`_abnormal_termination`** | `<excpt.h>` |

## See also

[try-finally Statement](../cpp/try-finally-statement.md)