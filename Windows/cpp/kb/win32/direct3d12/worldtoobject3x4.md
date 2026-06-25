# WorldToObject3x4

A matrix for transforming from world-space to object-space. Object-space refers to the space of the current bottom-level acceleration structure.

## Syntax

```
float3x4 WorldToObject3x4();

```




## Remarks

The matrix is a transposition of **WorldToObject4x3** matrix.

This function can be called from the following raytracing shader types:

* [**Any Hit Shader**](any-hit-shader.md)
* [**Closest Hit Shader**](closest-hit-shader.md)
* [**Intersection Shader**](intersection-shader.md)





## See also

<dl> <dt>

[Direct3D 12 Raytracing HLSL Reference](direct3d-12-raytracing-hlsl-reference.md)
</dt> </dl>

 

 



