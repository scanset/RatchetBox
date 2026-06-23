# `__std_terminate`

Called by the runtime when the program cannot continue. It may also be called directly.

## Syntax

```cpp
void __std_terminate();
```

## Remarks

When called due to a thrown exception, an implicit exception handler is considered active.

## Requirements

| Routine | Exported by |
|---|---|
| **`__std_terminate`** | `<ucrtbase_enclave.dll>` |