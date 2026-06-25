# SV\_InsideTessFactor

Defines the tessellation amount within a patch surface.

## Type



|  Type          | Input topology               |
|------------|----------------|
| float\[2\] | quad patch     |
| float      | tri patch      |
| unused     | isoline        |



 

Tessellation factors must be declared as array; they cannot be packed into a single vector.

## Remarks

This value must be defined during the patch constant function of the hull shader.

Required output value for the hull shader if using quad or tri patches. This value is a required input for the domain shader in order for hardware to match the signatures through the tessellator.

This function is supported in the following types of shaders:



| Vertex | Hull | Domain | Geometry | Pixel | Compute |
|--------|------|--------|----------|-------|---------|
|        | x    | x      |          |       |         |



 

## See also

<dl> <dt>

[Semantics](dx-graphics-hlsl-semantics.md)
</dt> <dt>

[Shader Model 5](d3d11-graphics-reference-sm5.md)
</dt> </dl>

 

 



