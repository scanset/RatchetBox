# ID3DXRenderToSurface::GetDesc method

Retrieves the parameters of the render surface.

## Syntax


```C++
HRESULT GetDesc(
  [out] D3DXRTS_DESC *pParameters
);
```



## Parameters

<dl> <dt>

*pParameters* \[out\]
</dt> <dd>

Type: **[**D3DXRTS\_DESC**](d3dxrts-desc.md)\***

Pointer to a [**D3DXRTS\_DESC**](d3dxrts-desc.md) structure, describing the parameters of the render surface.

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

[ID3DXRenderToSurface](id3dxrendertosurface.md)
</dt> </dl>

 

 



