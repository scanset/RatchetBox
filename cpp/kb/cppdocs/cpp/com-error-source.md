# `_com_error::Source`

**Microsoft Specific**

Calls `IErrorInfo::GetSource` function.

## Syntax

```cpp
_bstr_t Source() const;
```

## Return value

Returns the result of `IErrorInfo::GetSource` for the `IErrorInfo` object recorded within the `_com_error` object. The resulting `BSTR` is encapsulated in a `_bstr_t` object. If no `IErrorInfo` is recorded, it returns an empty `_bstr_t`.

## Remarks

Any failure while calling the `IErrorInfo::GetSource` method is ignored.

**END Microsoft Specific**

## See also

[`_com_error` class](../cpp/com-error-class.md)