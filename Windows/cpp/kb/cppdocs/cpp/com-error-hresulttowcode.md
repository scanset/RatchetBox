# `_com_error::HRESULTToWCode`

**Microsoft Specific**

Maps 32-bit `HRESULT` to 16-bit `wCode`.

## Syntax

```cpp
static WORD HRESULTToWCode(
   HRESULT hr
) throw();
```

### Parameters

*`hr`*\
The 32-bit `HRESULT` to be mapped to 16-bit `wCode`.

## Return value

16-bit `wCode` mapped from the 32-bit `HRESULT`.

## Remarks

For more information, see [`_com_error::WCode`](../cpp/com-error-wcode.md).

**END Microsoft Specific**

## See also

[`_com_error::WCode`](../cpp/com-error-wcode.md)\
[`_com_error::WCodeToHRESULT`](../cpp/com-error-wcodetohresult.md)\
[`_com_error` class](../cpp/com-error-class.md)