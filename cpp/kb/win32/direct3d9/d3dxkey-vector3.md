# D3DXKEY\_VECTOR3 structure

Describes a vector key for use in key frame animation. It specifies a vector at a given time. This is used for scale and translation keys.

## Syntax


```C++
typedef struct D3DXKEY_VECTOR3 {
  FLOAT       Time;
  D3DXVECTOR3 Value;
} D3DXKEY_VECTOR3, *LPD3DXKEY_VECTOR3;
```



## Members

<dl> <dt>

**Time**
</dt> <dd>

Type: **[**FLOAT**](../winprog/windows-data-types.md)**

</dd> <dd>

Key frame time stamp.

</dd> <dt>

**Value**
</dt> <dd>

Type: **[**D3DXVECTOR3**](d3dxvector3.md)**

</dd> <dd>

[**D3DXVECTOR3**](d3dxvector3.md) 3D vector that supplies scale and/or translation values.

</dd> </dl>

## Requirements



| Requirement | Value |
|-------------------|----------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D3dx9anim.h</dt> </dl> |



## See also

<dl> <dt>

[D3DX Structures](dx9-graphics-reference-d3dx-structures.md)
</dt> </dl>

**Header:** d3dx9anim.h
