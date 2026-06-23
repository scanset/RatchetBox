# DeviceMemoryBarrierWithGroupSync function

Blocks execution of all threads in a group until all device memory accesses have been completed and all threads in the group have reached this call.

## Syntax

``` syntax
void DeviceMemoryBarrierWithGroupSync(void);
```

## Parameters

This function has no parameters.

## Return value

This function does not return a value.

## Remarks

The behavior of calls to this function that are within diverging branches of a thread group are undefined.

### Minimum Shader Model

This function is supported in the following shader models.



| Shader Model                                                                | Supported |
|-----------------------------------------------------------------------------|-----------|
| [Shader Model 5](d3d11-graphics-reference-sm5.md) and higher shader models | yes       |



 

This function is supported in the following types of shaders:



| Vertex | Hull | Domain | Geometry | Pixel | Compute |
|--------|------|--------|----------|-------|---------|
|        |      |        |          |       | x       |



 

## See also

<dl> <dt>

[Intrinsic Functions](dx-graphics-hlsl-intrinsic-functions.md)
</dt> <dt>

[Shader Model 5](d3d11-graphics-reference-sm5.md)
</dt> </dl>

 

 



