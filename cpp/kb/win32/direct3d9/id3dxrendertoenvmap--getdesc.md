# ID3DXRenderToEnvMap::GetDesc method

Retrieves the description of the render surface.

## Syntax


```C++
HRESULT GetDesc(
  [out] D3DXRTE_DESC *pDesc
);
```



## Parameters

<dl> <dt>

*pDesc* \[out\]
</dt> <dd>

Type: **[**D3DXRTE\_DESC**](d3dxrte-desc.md)\***

Pointer to a [**D3DXRTE\_DESC**](d3dxrte-desc.md) structure that describes the rendering surface.

</dd> </dl>

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

If the method succeeds, the return value is D3D\_OK. If the method fails, the return value can be D3DERR\_INVALIDCALL.

## Requirements



| Requirement | Value |
|--------------------|----------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3dx9core.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>   |



## See also

<dl> <dt>

[ID3DXRenderToEnvMap](id3dxrendertoenvmap.md)
</dt> </dl>

 

 



