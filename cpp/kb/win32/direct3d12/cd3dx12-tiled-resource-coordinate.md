# CD3DX12\_TILED\_RESOURCE\_COORDINATE structure

A helper structure to enable easy initialization of a [**D3D12\_TILED\_RESOURCE\_COORDINATE**](/windows/desktop/api/d3d12/ns-d3d12-d3d12_tiled_resource_coordinate) structure.

## Syntax


```C++
struct CD3DX12_TILED_RESOURCE_COORDINATE  : public D3D12_TILED_RESOURCE_COORDINATE{
   CD3DX12_TILED_RESOURCE_COORDINATE();
   explicit CD3DX12_TILED_RESOURCE_COORDINATE(const D3D12_TILED_RESOURCE_COORDINATE &o);
   CD3DX12_TILED_RESOURCE_COORDINATE(UINT x, UINT y, UINT z, UINT subresource);
   operator const D3D12_TILED_RESOURCE_COORDINATE&() const;
};
```



## Members

<dl> <dt>

**CD3DX12\_TILED\_RESOURCE\_COORDINATE()**
</dt> <dd>

Creates a new, uninitialized, instance of a CD3DX12\_TILED\_RESOURCE\_COORDINATE.

</dd> <dt>

**explicit CD3DX12\_TILED\_RESOURCE\_COORDINATE(const D3D12\_TILED\_RESOURCE\_COORDINATE &o)**
</dt> <dd>

Creates a new instance of a CD3DX12\_TILED\_RESOURCE\_COORDINATE, initialized with the contents of another [**D3D12\_TILED\_RESOURCE\_COORDINATE**](/windows/desktop/api/d3d12/ns-d3d12-d3d12_tiled_resource_coordinate) structure.

</dd> <dt>

**CD3DX12\_TILED\_RESOURCE\_COORDINATE(UINT x, UINT y, UINT z, UINT subresource)**
</dt> <dd>

Creates a new instance of a CD3DX12\_TILED\_RESOURCE\_COORDINATE, initializing the following parameters:

UINT x

UINT y

UINT z

UINT subresource

</dd> <dt>

**operator const D3D12\_TILED\_RESOURCE\_COORDINATE&() const**
</dt> <dd>

Defines the & pass-by-reference operator for the parent structure type.

</dd> </dl>

## Requirements



| Requirement | Value |
|-------------------|-------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D3dx12.h</dt> </dl> |



## See also

<dl> <dt>

[**D3D12\_TILED\_RESOURCE\_COORDINATE**](/windows/desktop/api/d3d12/ns-d3d12-d3d12_tiled_resource_coordinate)
</dt> <dt>

[Helper Structures for D3D12](helper-structures-for-d3d12.md)
</dt> </dl>

**Header:** d3dx12.h
