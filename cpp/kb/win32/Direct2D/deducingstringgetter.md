# DeducingStringGetter

Deduces the class and arguments and then calls a member-function property getter callback for a string-type property.

> [!Note]  
> DeducingStringGetter should not be called directly.

 

``` syntax
template<class C, typename I>  
HRESULT DeducingStringGetter(
    _In_ HRESULT (C::*callback)(PWSTR, UINT32, UINT32*) const,
    _In_ const I *effect,
    _Out_writes_opt_(dataSize) BYTE *data,
    UINT32 dataSize,
    _Out_opt_ UINT32 *actualSize 
    ) 
```

## Requirements



| Requirement | Value |
|-------------------|------------------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D2d1effecthelpers.h</dt> </dl> |



## See also

<dl> <dt>

[**Direct2D::DeducingStringSetter**](deducingstringsetter.md)
</dt> </dl>

**Header:** d2d1effecthelpers.h
