# D3DXFrameNumNamedMatrices function

Counts number of frames in a subtree that have non-null names.

## Syntax


```C++
UINT D3DXFrameNumNamedMatrices(
  _In_ const D3DXFRAME *pFrameRoot
);
```



## Parameters

<dl> <dt>

*pFrameRoot* \[in\]
</dt> <dd>

Type: **const [**D3DXFRAME**](d3dxframe.md)\***

Pointer to the root node of the subtree.

</dd> </dl>

## Return value

Type: **[**UINT**](../winprog/windows-data-types.md)**

Returns the frame count.

## Requirements



| Requirement | Value |
|--------------------|----------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3dx9anim.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>   |



## See also

<dl> <dt>

[Animation Functions](dx9-graphics-reference-d3dx-functions-animation.md)
</dt> </dl>

 

 