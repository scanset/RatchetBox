# `_com_error::HelpContext`

**Microsoft Specific**

Calls `IErrorInfo::GetHelpContext` function.

## Syntax

```cpp
DWORD HelpContext() const throw();
```

## Return value

Returns the result of `IErrorInfo::GetHelpContext` for the `IErrorInfo` object recorded within the `_com_error` object. If no `IErrorInfo` object is recorded, it returns a zero.

## Remarks

Any failure while calling the `IErrorInfo::GetHelpContext` method is ignored.

**END Microsoft Specific**

## See also

[`_com_error` class](../cpp/com-error-class.md)