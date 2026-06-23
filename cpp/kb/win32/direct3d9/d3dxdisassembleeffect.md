# D3DXDisassembleEffect function

Disassemble an effect.

## Syntax


```C++
HRESULT D3DXDisassembleEffect(
  _In_  LPD3DXEFFECT pEffect,
  _In_  BOOL         EnableColorCode,
  _Out_ LPD3DXBUFFER *ppDisassembly
);
```



## Parameters

<dl> <dt>

*pEffect* \[in\]
</dt> <dd>

Type: **[**LPD3DXEFFECT**](id3dxeffect.md)**

Pointer to an [**ID3DXEffect**](id3dxeffect.md) interface that contains the effect.

</dd> <dt>

*EnableColorCode* \[in\]
</dt> <dd>

Type: **[**BOOL**](../winprog/windows-data-types.md)**

Enable color coding to make the disassembly easier to read.

</dd> <dt>

*ppDisassembly* \[out\]
</dt> <dd>

Type: **[**LPD3DXBUFFER**](id3dxbuffer.md)\***

Returns a buffer containing the disassembled shader. See [**ID3DXBuffer**](id3dxbuffer.md).

</dd> </dl>

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

If the function succeeds, the return value is D3D\_OK. If the function fails, the return value can be one of the following: D3DERR\_INVALIDCALL, D3DXERR\_INVALIDDATA, E\_OUTOFMEMORY.

## Requirements



| Requirement | Value |
|--------------------|------------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Effect.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>     |



## See also

<dl> <dt>

[Effect Functions](dx9-graphics-reference-effects-functions.md)
</dt> </dl>

 

 