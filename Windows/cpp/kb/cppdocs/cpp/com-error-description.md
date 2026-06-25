# `_com_error::Description`

**Microsoft Specific**

Calls `IErrorInfo::GetDescription` function.

## Syntax

```cpp
_bstr_t Description() const;
```

## Return value

Returns the result of `IErrorInfo::GetDescription` for the `IErrorInfo` object recorded within the `_com_error` object. The resulting `BSTR` is encapsulated in a `_bstr_t` object. If no `IErrorInfo` is recorded, it returns an empty `_bstr_t`.

## Remarks

Calls the `IErrorInfo::GetDescription` function and retrieves `IErrorInfo` recorded within the `_com_error` object. Any failure while calling the `IErrorInfo::GetDescription` method is ignored.

**END Microsoft Specific**

## See also

[`_com_error` class](../cpp/com-error-class.md)