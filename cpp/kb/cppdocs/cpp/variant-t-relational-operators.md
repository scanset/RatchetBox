# _variant_t Relational Operators

**Microsoft Specific**

Compare two `_variant_t` objects for equality or inequality.

## Syntax

```
bool operator==(
   const VARIANT& varSrc) const;
bool operator==(
   const VARIANT* pSrc) const;
bool operator!=(
   const VARIANT& varSrc) const;
bool operator!=(
   const VARIANT* pSrc) const;
```

#### Parameters

*varSrc*<br/>
A `VARIANT` to be compared with the `_variant_t` object.

*pSrc*<br/>
Pointer to the `VARIANT` to be compared with the `_variant_t` object.

## Return Value

Returns **`true`** if comparison holds, **`false`** if not.

## Remarks

Compares a `_variant_t` object with a `VARIANT`, testing for equality or inequality.

**END Microsoft Specific**

## See also

[_variant_t Class](../cpp/variant-t-class.md)