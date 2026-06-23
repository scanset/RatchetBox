# ID3DXBaseEffect::GetValue method

Get the value of an arbitrary parameter or annotation, including simple types, structs, arrays, strings, shaders and textures. This method can be used in place of nearly all the Getxxx calls in [**ID3DXBaseEffect**](id3dxbaseeffect.md).

## Syntax


```C++
HRESULT GetValue(
  [in]  D3DXHANDLE hParameter,
  [out] LPVOID     pData,
  [in]  UINT       Bytes
);
```



## Parameters

<dl> <dt>

*hParameter* \[in\]
</dt> <dd>

Type: **[D3DXHANDLE](dx9-graphics-reference-effects-constants.md)**

Unique identifier. See [Handles (Direct3D 9)](handles.md).

</dd> <dt>

*pData* \[out\]
</dt> <dd>

Type: **[**LPVOID**](../winprog/windows-data-types.md)**

Returns a buffer containing the value.

</dd> <dt>

*Bytes* \[in\]
</dt> <dd>

Type: **[**UINT**](../winprog/windows-data-types.md)**

\[in\] Number of bytes in the buffer. Pass in D3DX\_DEFAULT if you know your buffer is large enough to contain the entire parameter, and you want to skip size validation.

</dd> </dl>

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

If the method succeeds, the return value is D3D\_OK. If the method fails, the return value can be D3DERR\_INVALIDCALL.

## Requirements



| Requirement | Value |
|--------------------|------------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Shader.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>     |



## See also

<dl> <dt>

[ID3DXBaseEffect](id3dxbaseeffect.md)
</dt> <dt>

[**SetValue**](id3dxbaseeffect--setvalue.md)
</dt> </dl>

 

 