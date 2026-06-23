# D3DXSHADER\_CONSTANTTABLE structure

Helper structure for managing a shader constant table. This can also be done using [**ID3DXConstantTable**](id3dxconstanttable.md).

## Syntax


```C++
typedef struct D3DXSHADER_CONSTANTTABLE {
  DWORD Size;
  DWORD Creator;
  DWORD Version;
  DWORD Constants;
  DWORD ConstantInfo;
  DWORD Flags;
  DWORD Target;
} D3DXSHADER_CONSTANTTABLE, *LPD3DXSHADER_CONSTANTTABLE;
```



## Members

<dl> <dt>

**Size**
</dt> <dd>

Type: **[**DWORD**](../winprog/windows-data-types.md)**

</dd> <dd>

Size of the structure. See Remarks.

</dd> <dt>

**Creator**
</dt> <dd>

Type: **[**DWORD**](../winprog/windows-data-types.md)**

</dd> <dd>

Offset from the beginning of this structure, in bytes, to the string that contains the name of the creator.

</dd> <dt>

**Version**
</dt> <dd>

Type: **[**DWORD**](../winprog/windows-data-types.md)**

</dd> <dd>

Shader version.

</dd> <dt>

**Constants**
</dt> <dd>

Type: **[**DWORD**](../winprog/windows-data-types.md)**

</dd> <dd>

Number of constants.

</dd> <dt>

**ConstantInfo**
</dt> <dd>

Type: **[**DWORD**](../winprog/windows-data-types.md)**

</dd> <dd>

Array of constant information, D3DXSHADER\_CONSTANTINFO\[*Constants*\]. See [**D3DXSHADER\_CONSTANTINFO**](d3dxshader-constantinfo.md).

</dd> <dt>

**Flags**
</dt> <dd>

Type: **[**DWORD**](../winprog/windows-data-types.md)**

</dd> <dd>

The [D3DXSHADER Flags](d3dxshader-flags.md) flags used to compile the shader.

</dd> <dt>

**Target**
</dt> <dd>

Type: **[**DWORD**](../winprog/windows-data-types.md)**

</dd> <dd>

Offset into the string that contains the target.

</dd> </dl>

## Remarks

Shader constant information is included in a tab-delimited table of comments. All offsets are measured in bytes from the beginning of the structure. Entries in the constant table are sorted by Creator in ascending order.

A shader constant table can be managed with the [**ID3DXConstantTable**](id3dxconstanttable.md) interfaces. Alternatively, you can manage the constant table with **D3DXSHADER\_CONSTANTTABLE**.

This size member is often initialized using the following:


```
D3DXSHADER_CONSTANTTABLE constantTable;
constantTable.Size = sizeof(D3DXSHADER_CONSTANTTABLE)
```



## Requirements



| Requirement | Value |
|-------------------|------------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D3dx9shader.h</dt> </dl> |



## See also

<dl> <dt>

[D3DX Structures](dx9-graphics-reference-d3dx-structures.md)
</dt> <dt>

[**D3DXGetShaderConstantTable**](d3dxgetshaderconstanttable.md)
</dt> </dl>

**Header:** d3dx9shader.h
