# D3DXPASS\_DESC structure

Describes a pass for an effect object.

## Syntax


```C++
typedef struct D3DXPASS_DESC {
  LPCSTR      Name;
  UINT        Annotations;
  const DWORD *pVertexShaderFunction;
  const DWORD *pPixelShaderFunction;
} D3DXPASS_DESC, *LPD3DXPASS_DESC;
```



## Members

<dl> <dt>

**Name**
</dt> <dd>

Type: **[**LPCSTR**](../winprog/windows-data-types.md)**

</dd> <dd>

String value used for the pass.

</dd> <dt>

**Annotations**
</dt> <dd>

Type: **[**UINT**](../winprog/windows-data-types.md)**

</dd> <dd>

Annotations are user-specific data that can be attached to any technique, pass, or parameter. See [Add Information to Effect Parameters with\_Annotations](using-an-effect.md).

</dd> <dt>

**pVertexShaderFunction**
</dt> <dd>

Type: **const [**DWORD**](../winprog/windows-data-types.md)\***

</dd> <dd>

Pointer to the vertex shader function. If an effect is created with [D3DXFX\_NOT\_CLONEABLE](d3dxfx.md), this structure will return a **NULL** pointer when called by [**GetPassDesc**](id3dxbaseeffect--getpassdesc.md).

</dd> <dt>

**pPixelShaderFunction**
</dt> <dd>

Type: **const [**DWORD**](../winprog/windows-data-types.md)\***

</dd> <dd>

Pointer to the pixel shader function. If an effect is created with [D3DXFX\_NOT\_CLONEABLE](d3dxfx.md), this structure will return a **NULL** pointer when called by [**GetPassDesc**](id3dxbaseeffect--getpassdesc.md).

</dd> </dl>

## Requirements



| Requirement | Value |
|-------------------|------------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D3dx9effect.h</dt> </dl> |



## See also

<dl> <dt>

[Effect Structures](dx9-graphics-reference-effects-structures.md)
</dt> <dt>

[**GetPassDesc**](id3dxbaseeffect--getpassdesc.md)
</dt> </dl>

**Header:** d3dx9effect.h
