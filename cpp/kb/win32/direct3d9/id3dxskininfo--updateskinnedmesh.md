# ID3DXSkinInfo::UpdateSkinnedMesh method

Applies software skinning to the target vertices based on the current matrices.

## Syntax


```C++
HRESULT UpdateSkinnedMesh(
  [in] const D3DXMATRIX *pBoneTransforms,
  [in] const D3DXMATRIX *pBoneInvTransposeTransforms,
  [in]       LPCVOID    pVerticesSrc,
  [in]       PVOID      pVerticesDst
);
```



## Parameters

<dl> <dt>

*pBoneTransforms* \[in\]
</dt> <dd>

Type: **const [**D3DXMATRIX**](d3dxmatrix.md)\***

Bone transform matrix.

</dd> <dt>

*pBoneInvTransposeTransforms* \[in\]
</dt> <dd>

Type: **const [**D3DXMATRIX**](d3dxmatrix.md)\***

Inverse transpose of the bone transform matrix.

</dd> <dt>

*pVerticesSrc* \[in\]
</dt> <dd>

Type: **[**LPCVOID**](../winprog/windows-data-types.md)**

Pointer to the buffer containing the source vertices.

</dd> <dt>

*pVerticesDst* \[in\]
</dt> <dd>

Type: **[**PVOID**](../winprog/windows-data-types.md)**

Pointer to the buffer containing the destination vertices.

</dd> </dl>

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

If the method succeeds, the return value is D3D\_OK. If the method fails, the return value can be D3DERR\_INVALIDCALL.

## Remarks

When used to skin vertices with two position elements, this method skins the second position element with the inverse of the bone instead of the bone itself.

## Requirements



| Requirement | Value |
|--------------------|----------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Mesh.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>   |



## See also

<dl> <dt>

[ID3DXSkinInfo](id3dxskininfo.md)
</dt> </dl>

 

 