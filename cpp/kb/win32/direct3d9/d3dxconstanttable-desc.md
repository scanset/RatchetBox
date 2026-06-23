# D3DXCONSTANTTABLE\_DESC structure

A description of the constant table.

## Syntax


```C++
typedef struct D3DXCONSTANTTABLE_DESC {
  LPCSTR Creator;
  DWORD  Version;
  UINT   Constants;
} D3DXCONSTANTTABLE_DESC, *LPD3DXCONSTANTTABLE_DESC;
```



## Members

<dl> <dt>

**Creator**
</dt> <dd>

Type: **[**LPCSTR**](../winprog/windows-data-types.md)**

</dd> <dd>

Name of the constant table creator.

</dd> <dt>

**Version**
</dt> <dd>

Type: **[**DWORD**](../winprog/windows-data-types.md)**

</dd> <dd>

Shader version.

</dd> <dt>

**Constants**
</dt> <dd>

Type: **[**UINT**](../winprog/windows-data-types.md)**

</dd> <dd>

Number of constants in the constant table.

</dd> </dl>

## Requirements



| Requirement | Value |
|-------------------|------------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D3dx9shader.h</dt> </dl> |



## See also

<dl> <dt>

[D3DX Structures](dx9-graphics-reference-d3dx-structures.md)
</dt> <dt>

[**D3DXCONSTANT\_DESC**](d3dxconstant-desc.md)
</dt> </dl>

**Header:** d3dx9shader.h
