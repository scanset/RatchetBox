# DeducingValueSetter

Deduces the class and arguments and then calls a member-function property setter callback for a value-type property.

> [!Note]  
> DeducingValueSetter should not be called directly.

 

``` syntax
template<class C, typename P, typename I>
HRESULT DeducingValueSetter(
    _In_ HRESULT (C::*callback)(P),
    _In_ I *effect,
    _In_reads_(dataSize) const BYTE *data,
    UINT32 dataSize  
    ) 
```

## Requirements



| Requirement | Value |
|-------------------|------------------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D2d1effecthelpers.h</dt> </dl> |



## See also

<dl> <dt>

[**Direct2D::DeducingValueGetter**](deducingvaluegetter.md)
</dt> </dl>

**Header:** d2d1effecthelpers.h
