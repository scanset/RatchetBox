# _variant_t::SetString

**Microsoft Specific**

Assigns a string to this `_variant_t` object.

## Syntax

```cpp
void SetString(const char* pSrc);
```

#### Parameters

*pSrc*<br/>
Pointer to the character string.

## Remarks

Converts an ANSI character string to a Unicode `BSTR` string and assigns it to this `_variant_t` object.

**END Microsoft Specific**

## See also

[_variant_t Class](../cpp/variant-t-class.md)