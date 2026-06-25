# `_com_error::GUID`

**Microsoft Specific**

Calls `IErrorInfo::GetGUID` function.

## Syntax

```cpp
GUID GUID() const throw();
```

## Return value

Returns the result of `IErrorInfo::GetGUID` for the `IErrorInfo` object recorded within the `_com_error` object. If no `IErrorInfo` object is recorded, it returns `GUID_NULL`.

## Remarks

Any failure while calling the `IErrorInfo::GetGUID` method is ignored.

**END Microsoft Specific**

## See also

[`_com_error` class](../cpp/com-error-class.md)