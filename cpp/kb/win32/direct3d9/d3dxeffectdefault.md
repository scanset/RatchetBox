# D3DXEFFECTDEFAULT structure

Effect default parameters.

## Syntax


```C++
typedef struct D3DXEFFECTDEFAULT {
  LPSTR                 pParamName;
  D3DXEFFECTDEFAULTTYPE Type;
  DWORD                 NumBytes;
  LPVOID                pValue;
} D3DXEFFECTDEFAULT, *LPD3DXEFFECTDEFAULT;
```



## Members

<dl> <dt>

**pParamName**
</dt> <dd>

Type: **LPSTR**

</dd> <dd>

Parameter name.

</dd> <dt>

**Type**
</dt> <dd>

Type: **[**D3DXEFFECTDEFAULTTYPE**](./d3dxeffectdefaulttype.md)**

</dd> <dd>

Data type in pValue. For more information, see [**D3DXEFFECTDEFAULTTYPE**](./d3dxeffectdefaulttype.md)

</dd> <dt>

**NumBytes**
</dt> <dd>

Type: **[**DWORD**](../winprog/windows-data-types.md)**

</dd> <dd>

Size, in bytes, of the data pointed to by pValue.

</dd> <dt>

**pValue**
</dt> <dd>

Type: **[**LPVOID**](../winprog/windows-data-types.md)**

</dd> <dd>

Pointer to the memory location that contains the data.

</dd> </dl>

## Requirements



| Requirement | Value |
|-------------------|----------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D3dx9mesh.h</dt> </dl> |



## See also

<dl> <dt>

[Effect Structures](dx9-graphics-reference-effects-structures.md)
</dt> </dl>

**Header:** d3dx9mesh.h
