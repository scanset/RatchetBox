# `_com_error::Error`

**Microsoft Specific**

Retrieves the `HRESULT` passed to the constructor.

## Syntax

```cpp
HRESULT Error() const throw();
```

## Return value

Raw `HRESULT` item passed into the constructor.

## Remarks

Retrieves the encapsulated `HRESULT` item in a `_com_error` object.

**END Microsoft Specific**

## See also

[`_com_error` class](../cpp/com-error-class.md)