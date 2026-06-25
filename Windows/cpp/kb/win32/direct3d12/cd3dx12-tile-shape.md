# CD3DX12\_TILE\_SHAPE structure

A helper structure to enable easy initialization of a [**D3D12\_TILE\_SHAPE**](/windows/desktop/api/d3d12/ns-d3d12-d3d12_tile_shape) structure.

## Syntax


```C++
struct CD3DX12_TILE_SHAPE  : public D3D12_TILE_SHAPE{
   CD3DX12_TILE_SHAPE();
   explicit CD3DX12_TILE_SHAPE(const D3D12_TILE_SHAPE &o);
   CD3DX12_TILE_SHAPE(UINT widthInTexels, UINT heightInTexels, UINT depthInTexels);
   operator const D3D12_TILE_SHAPE&() const;
};
```



## Members

<dl> <dt>

**CD3DX12\_TILE\_SHAPE()**
</dt> <dd>

Creates a new, uninitialized, instance of a CD3DX12\_TILE\_SHAPE.

</dd> <dt>

**explicit CD3DX12\_TILE\_SHAPE(const D3D12\_TILE\_SHAPE &o)**
</dt> <dd>

Creates a new instance of a CD3DX12\_TILE\_SHAPE, initialized with the contents of another [**D3D12\_TILE\_SHAPE**](/windows/desktop/api/d3d12/ns-d3d12-d3d12_tile_shape) structure.

</dd> <dt>

**CD3DX12\_TILE\_SHAPE(UINT widthInTexels, UINT heightInTexels, UINT depthInTexels)**
</dt> <dd>

Creates a new instance of a CD3DX12\_TILE\_SHAPE, initializing the following parameters:

UINT widthInTexels

UINT heightInTexels

UINT depthInTexels

</dd> <dt>

**operator const D3D12\_TILE\_SHAPE&() const**
</dt> <dd>

Defines the & pass-by-reference operator for the parent structure type.

</dd> </dl>

## Requirements



| Requirement | Value |
|-------------------|-------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D3dx12.h</dt> </dl> |



## See also

<dl> <dt>

[**D3D12\_TILE\_SHAPE**](/windows/desktop/api/d3d12/ns-d3d12-d3d12_tile_shape)
</dt> <dt>

[Helper Structures for D3D12](helper-structures-for-d3d12.md)
</dt> </dl>

**Header:** d3dx12.h
