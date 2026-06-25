# `_com_error::WCodeToHRESULT`

**Microsoft Specific**

Maps 16-bit *`wCode`* to 32-bit `HRESULT`.

## Syntax

```cpp
static HRESULT WCodeToHRESULT(
   WORD wCode
) throw();
```

### Parameters

*`wCode`*\
The 16-bit *`wCode`* to be mapped to 32-bit `HRESULT`.

## Return value

32-bit `HRESULT` mapped from the 16-bit *`wCode`*.

## Remarks

See the [`WCode`](../cpp/com-error-wcode.md) member function.

**END Microsoft Specific**

## See also

[`_com_error::WCode`](../cpp/com-error-wcode.md)\
[`_com_error::HRESULTToWCode`](../cpp/com-error-hresulttowcode.md)\
[`_com_error` class](../cpp/com-error-class.md)