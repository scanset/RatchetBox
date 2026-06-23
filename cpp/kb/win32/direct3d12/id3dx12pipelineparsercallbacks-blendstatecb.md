# ID3DX12PipelineParserCallbacks::BlendStateCb method

Calls the blend state description subobject callback of an object that implements this interface.

## Syntax


```C++
void BlendStateCb(
  [ref] const D3D12_BLEND_DESC &BlendState
);
```



## Parameters

<dl> <dt>

*BlendState* \[ref\]
</dt> <dd>

Type: **const [**D3D12\_BLEND\_DESC**](/windows/desktop/api/d3d12/ns-d3d12-d3d12_blend_desc)**

Details of the blend state description subobject parsed from a pipeline state stream.

</dd> </dl>

## Return value

Returns nothing.

## Requirements



| Requirement | Value |
|--------------------|--------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX12.h</dt> </dl>  |
| Library<br/> | <dl> <dt>D3D12.lib</dt> </dl> |
| DLL<br/>     | <dl> <dt>D3D12.dll</dt> </dl> |



## See also

<dl> <dt>

[Helper Interfaces for Direct3D 12](helper-interfaces-for-d3d12.md)
</dt> <dt>

[**ID3DX12PipelineParserCallbacks**](id3dx12pipelineparsercallbacks.md)
</dt> <dt>

[**D3D12\_BLEND\_DESC**](/windows/desktop/api/d3d12/ns-d3d12-d3d12_blend_desc)
</dt> </dl>

 

 




