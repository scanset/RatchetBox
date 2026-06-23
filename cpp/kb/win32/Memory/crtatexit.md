# `_crt_atexit`

Registers a function to be executed on exit.

## Syntax

```cpp
int _crt_atexit(
    _PVFV const function
    )
```

## Parameters

*`function`*\
The function to be executed on exit.

## Returns

Returns 0 if successful, or a nonzero value if an error occurs.

## Remarks

This function modifies the global onexit table.

## Requirements

| Routine | Exported by |
|---|---|
| **`_crt_atexit`** | `<ucrtbase_enclave.dll>` |