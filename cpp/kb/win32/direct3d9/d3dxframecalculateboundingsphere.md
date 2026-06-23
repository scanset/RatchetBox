# D3DXFrameCalculateBoundingSphere function

Computes the bounding sphere of all the meshes in the frame hierarchy.

## Syntax


```C++
HRESULT D3DXFrameCalculateBoundingSphere(
  _In_  const D3DXFRAME     *pFrameRoot,
  _Out_       LPD3DXVECTOR3 pObjectCenter,
  _Out_       FLOAT         *pObjectRadius
);
```



## Parameters

<dl> <dt>

*pFrameRoot* \[in\]
</dt> <dd>

Type: **const [**D3DXFRAME**](d3dxframe.md)\***

Pointer to the root node.

</dd> <dt>

*pObjectCenter* \[out\]
</dt> <dd>

Type: **[**LPD3DXVECTOR3**](d3dxvector3.md)**

Returns the center of the bounding sphere.

</dd> <dt>

*pObjectRadius* \[out\]
</dt> <dd>

Type: **[**FLOAT**](../winprog/windows-data-types.md)\***

Returns the radius of the bounding sphere.

</dd> </dl>

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

If the function succeeds, the return value is D3D\_OK. If the function fails, the return value can be one of the following values: D3DERR\_INVALIDCALL, E\_OUTOFMEMORY.

## Requirements



| Requirement | Value |
|--------------------|----------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3dx9anim.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>   |



## See also

<dl> <dt>

[Animation Functions](dx9-graphics-reference-d3dx-functions-animation.md)
</dt> </dl>

 

 