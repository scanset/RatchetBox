# D3DXEFFECTINSTANCE structure

Data type for managing a set of default effect parameters.

## Syntax


```C++
typedef struct D3DXEFFECTINSTANCE {
  LPSTR               pEffectFilename;
  DWORD               NumDefaults;
  LPD3DXEFFECTDEFAULT pDefaults;
} D3DXEFFECTINSTANCE, *LPD3DXEFFECTINSTANCE;
```



## Members

<dl> <dt>

**pEffectFilename**
</dt> <dd>

Type: **LPSTR**

</dd> <dd>

Name of the effect file.

</dd> <dt>

**NumDefaults**
</dt> <dd>

Type: **[**DWORD**](../winprog/windows-data-types.md)**

</dd> <dd>

Number of default parameters.

</dd> <dt>

**pDefaults**
</dt> <dd>

Type: **[**LPD3DXEFFECTDEFAULT**](d3dxeffectdefault.md)**

</dd> <dd>

Pointer to an array of [**D3DXEFFECTDEFAULT**](d3dxeffectdefault.md) elements, each of which contains an effect parameter.

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
