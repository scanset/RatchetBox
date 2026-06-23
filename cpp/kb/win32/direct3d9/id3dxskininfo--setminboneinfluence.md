# ID3DXSkinInfo::SetMinBoneInfluence method

Sets the minimum bone influence. Influence values smaller than this are ignored.

## Syntax


```C++
HRESULT SetMinBoneInfluence(
  [in] FLOAT MinInfl
);
```



## Parameters

<dl> <dt>

*MinInfl* \[in\]
</dt> <dd>

Type: **[**FLOAT**](../winprog/windows-data-types.md)**

Minimum influence value. Influence values smaller than this are ignored.

</dd> </dl>

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

If the method succeeds, the return value is D3D\_OK. If the method fails, the return value can be D3DERR\_INVALIDCALL.

## Requirements



| Requirement | Value |
|--------------------|----------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Mesh.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>   |



## See also

<dl> <dt>

[ID3DXSkinInfo](id3dxskininfo.md)
</dt> <dt>

[**ID3DXSkinInfo::GetMinBoneInfluence**](id3dxskininfo--getminboneinfluence.md)
</dt> </dl>

 

 