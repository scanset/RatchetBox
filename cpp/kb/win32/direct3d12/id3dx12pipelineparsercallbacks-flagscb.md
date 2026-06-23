# ID3DX12PipelineParserCallbacks::FlagsCb method

Calls the flags subobject callback of an object that implements this interface.

## Syntax


```C++
void FlagsCb(
   D3D12_PIPELINE_STATE_FLAGS Flags
);
```



## Parameters

<dl> <dt>

*Flags* 
</dt> <dd>

Type: **[**D3D12\_PIPELINE\_STATE\_FLAGS**](/windows/desktop/api/d3d12/ne-d3d12-d3d12_pipeline_state_flags)**

Details of the flags subobject parsed from a pipeline state stream.

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

[**D3D12\_PIPELINE\_STATE\_FLAGS**](/windows/desktop/api/d3d12/ne-d3d12-d3d12_pipeline_state_flags)
</dt> </dl>

 

 




