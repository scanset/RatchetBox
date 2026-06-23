# ID3DXTextureGutterHelper::GetFaceMap method

Retrieves the index of the mesh face to which each texel belongs.

## Syntax


```C++
HRESULT GetFaceMap(
  [in] UINT *pFaceData
);
```



## Parameters

<dl> <dt>

*pFaceData* \[in\]
</dt> <dd>

Type: **[**UINT**](../winprog/windows-data-types.md)\***

Pointer to the index of the mesh face to which each texel belongs.

</dd> </dl>

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

If the method succeeds, the return value is S\_OK. If the method fails, the following value will be returned.D3DERR\_INVALIDCALL

## Remarks

The mesh face data returned by this method is valid only for valid (non-class 0) texels. [**ID3DXTextureGutterHelper::GetGutterMap**](id3dxtexturegutterhelper--getguttermap.md) will return nonzero values for valid (non-class 0) texels.

For [**class 2 texels**](id3dxtexturegutterhelper.md), this method retrieves the closest face.

The application must allocate and manage pFaceData.

## Requirements



| Requirement | Value |
|--------------------|----------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Mesh.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>   |



## See also

<dl> <dt>

[ID3DXTextureGutterHelper](id3dxtexturegutterhelper.md)
</dt> </dl>

 

 