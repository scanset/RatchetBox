# ID3DXEffect::GetPool method

Gets a pointer to the pool of shared parameters.

## Syntax


```C++
HRESULT GetPool(
  [out] LPD3DXEFFECTPOOL *ppPool
);
```



## Parameters

<dl> <dt>

*ppPool* \[out\]
</dt> <dd>

Type: **[**LPD3DXEFFECTPOOL**](id3dxeffectpool.md)\***

Pointer to a [**ID3DXEffectPool**](id3dxeffectpool.md) object.

</dd> </dl>

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

This method always returns the value S\_OK.

## Remarks

Pools contain shared parameters between effects. See [Cloning and Sharing (Direct3D 9)](cloning-and-sharing.md).

## Requirements



| Requirement | Value |
|--------------------|------------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Effect.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>     |



## See also

<dl> <dt>

[ID3DXEffect](id3dxeffect.md)
</dt> </dl>

 

 



