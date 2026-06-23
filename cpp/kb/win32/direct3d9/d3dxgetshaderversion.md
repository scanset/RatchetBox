# D3DXGetShaderVersion function

Returns the shader version of the compiled shader.

## Syntax


```C++
DWORD D3DXGetShaderVersion(
  _In_ const DWORD *pFunction
);
```



## Parameters

<dl> <dt>

*pFunction* \[in\]
</dt> <dd>

Type: **const [**DWORD**](../winprog/windows-data-types.md)\***

Pointer to the function DWORD stream.

</dd> </dl>

## Return value

Type: **[**DWORD**](../winprog/windows-data-types.md)**

Returns the shader version of the given shader, or zero if the shader function is **NULL**.

## Requirements



| Requirement | Value |
|--------------------|------------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Shader.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>     |



## See also

<dl> <dt>

[Shader Functions](dx9-graphics-reference-d3dx-functions-shader.md)
</dt> </dl>

 

 