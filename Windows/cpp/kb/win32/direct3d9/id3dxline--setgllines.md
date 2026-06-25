# ID3DXLine::SetGLLines method

Toggles the mode to draw OpenGL-style lines.

## Syntax


```C++
HRESULT SetGLLines(
  [in] BOOL bGLLines
);
```



## Parameters

<dl> <dt>

*bGLLines* \[in\]
</dt> <dd>

Type: **[**BOOL**](../winprog/windows-data-types.md)**

Toggles OpenGL-style line drawing. **TRUE** enables OpenGL-style lines, and **FALSE** enables Direct3D-style lines.

</dd> </dl>

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

If the method succeeds, the return value is D3D\_OK. If the method fails, the return value can be one of the following: D3DERR\_INVALIDCALL, D3DXERR\_INVALIDDATA.

## Requirements



| Requirement | Value |
|--------------------|----------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3dx9core.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>   |



## See also

<dl> <dt>

[ID3DXLine](id3dxline.md)
</dt> </dl>

 

 