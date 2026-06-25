# DeducingStringSetter

Deduces the class and arguments and then calls a member-function property setter callback for a string-type property.

> [!Note]  
> DeducingStringSetter should not be called directly.

 

``` syntax
template<class C, typename I>  
HRESULT DeducingStringSetter(  
    _In_ HRESULT (C::*callback)(PCWSTR string),
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

[**Direct2D::DeducingStringGetter**](deducingstringgetter.md)
</dt> </dl>

**Header:** d2d1effecthelpers.h
