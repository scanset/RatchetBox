# `_com_error::HelpFile`

**Microsoft Specific**

Calls `IErrorInfo::GetHelpFile` function.

## Syntax

```cpp
_bstr_t HelpFile() const;
```

## Return value

Returns the result of `IErrorInfo::GetHelpFile` for the `IErrorInfo` object recorded within the `_com_error` object. The resulting BSTR is encapsulated in a `_bstr_t` object. If no `IErrorInfo` is recorded, it returns an empty `_bstr_t`.

## Remarks

Any failure while calling the `IErrorInfo::GetHelpFile` method is ignored.

**END Microsoft Specific**

## See also

[`_com_error` class](../cpp/com-error-class.md)