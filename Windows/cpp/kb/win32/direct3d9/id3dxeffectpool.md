# ID3DXEffectPool interface

Applications use the **ID3DXEffectPool** interface to identify parameters that are going to be shared across effects. See parameter sharing in [Cloning and Sharing (Direct3D 9)](cloning-and-sharing.md). This interface has no methods.

## Members

The **ID3DXEffectPool** interface inherits from the [**IUnknown**](/windows/win32/api/unknwn/nn-unknwn-iunknown) interface but does not have additional members.

## Remarks

The ID3DXEffectPool interface is obtained by calling [**D3DXCreateEffectPool**](d3dxcreateeffectpool.md).

The LPD3DXEFFECTPOOL type is defined as a pointer to this interface.


```
typedef interface ID3DXEffectPool ID3DXEffectPool;
typedef interface ID3DXEffectPool *LPD3DXEFFECTPOOL;
```



## Requirements



| Requirement | Value |
|--------------------|------------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Effect.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>     |



## See also

<dl> <dt>

[Effect Interfaces](dx9-graphics-reference-effects-interfaces.md)
</dt> </dl>

 

 