# D3DTS\_WORLD macro

Identifies the transformation matrix being set as the world transformation matrix.

## Syntax


```C++
D3DTRANSFORMSTATETYPE D3DTS_WORLD(void);
```



## Parameters

This macro has no parameters.

## Return value

A [**D3DTRANSFORMSTATETYPE**](./d3dtransformstatetype.md) equivalent to [**D3DTS\_WORLDMATRIX(0)**](./d3dts-worldmatrix.md).

## Remarks

This macro is provided to facilitate porting existing applications to Direct3D 9.

## Requirements



| Requirement | Value |
|-------------------|----------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D3d9types.h</dt> </dl> |



## See also

<dl> <dt>

[Macros](dx9-graphics-reference-d3d-macros.md)
</dt> <dt>

[**SetTransform**](/windows/win32/api/d3d9helper/nf-d3d9helper-idirect3ddevice9-settransform)
</dt> <dt>

[**D3DTS\_WORLDMATRIX**](d3dts-worldmatrix.md)
</dt> </dl>

**Header:** D3d9types.h
