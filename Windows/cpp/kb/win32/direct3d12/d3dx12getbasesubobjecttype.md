# D3DX12GetBaseSubobjectType function

Returns the subobject type that corresponds to the base class of the passed-in subobject type.

## Syntax


```C++
D3D12_PIPELINE_STATE_SUBOBJECT_TYPE inline D3DX12GetBaseSubobjectType(
   D3D12_PIPELINE_STATE_SUBOBJECT_TYPE SubobjectType
);
```



## Parameters

<dl> <dt>

*SubobjectType* 
</dt> <dd>

Type: **D3D12\_PIPELINE\_STATE\_SUBOBJECT\_TYPE**

An enumeration value that specifies the subobject type that you're interested in.

</dd> </dl>

## Return value

Type: **D3D12\_PIPELINE\_STATE\_SUBOBJECT\_TYPE**

If *SubobjectType* corresponds to a subobject data type that is derived from another subobject data type, the subobject type of the base subobject data type is returned; otherwise, the passed-in subobject type is returned. For example, if **D3D12\_PIPELINE\_STATE\_SUBOBJECT\_TYPE\_DEPTH\_STENCIL1** is passed in, then **D3D12\_PIPELINE\_STATE\_SUBOBJECT\_TYPE\_DEPTH\_STENCIL** is returned.

## Remarks

## Requirements



| Requirement | Value |
|--------------------|--------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3dx12.h</dt> </dl>  |
| Library<br/> | <dl> <dt>D3D12.lib</dt> </dl> |
| DLL<br/>     | <dl> <dt>D3D12.dll</dt> </dl> |



## See also

<dl> <dt>

[Helper Functions for D3D12](helper-functions-for-d3d12.md)
</dt> </dl>

 

 




