# _com_error::ErrorInfo

**Microsoft Specific**

Retrieves the `IErrorInfo` object passed to the constructor.

## Syntax

```cpp
IErrorInfo * ErrorInfo( ) const throw( );
```

## Return value

Raw `IErrorInfo` item passed into the constructor.

## Remarks

Retrieves the encapsulated `IErrorInfo` item in a `_com_error` object, or `NULL` if no `IErrorInfo` item is recorded. The caller must call `Release` on the returned object when finished using it.

**END Microsoft Specific**

## See also

[`_com_error` class](../cpp/com-error-class.md)