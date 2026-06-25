# `__uncaught_exception`

Indicates whether one or more exceptions have been thrown, but haven't yet been handled by the corresponding **`catch`** block of a [try-catch](../../cpp/try-throw-and-catch-statements-cpp.md) statement.

## Syntax

```cpp
bool __uncaught_exception();
```

## Return value

**`true`** from the time an exception is thrown in a **`try`** block until the matching **`catch`** block is initialized; otherwise, **`false`**.

## Requirements

| Routine | Required header |
|---|---|
| **`__uncaught_exception`** | `<eh.h>` |

## See also

[try, throw, and catch Statements (C++)](../../cpp/try-throw-and-catch-statements-cpp.md)