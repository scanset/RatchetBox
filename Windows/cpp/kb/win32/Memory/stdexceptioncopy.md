# `__std_exception_copy`

Provides an exception pointer object that points to a copy of the provided exception.

## Syntax

```cpp
void __std_exception_copy(
    __std_exception_data const* const from,
    __std_exception_data*       const to
    )
```

## Parameters

*`from`*\
The exception to copy.

*`to`*\
An exception pointer to a copy of its `from` argument.

## Remarks

In the C++ standard, this function was renamed to [make_exception_ptr](/cpp/parallel/concrt/reference/make-exception-ptr-function).

## Requirements

| Routine | Exported by |
|---|---|
| **`__std_exception_copy`** | `<ucrtbase_enclave.dll>` |