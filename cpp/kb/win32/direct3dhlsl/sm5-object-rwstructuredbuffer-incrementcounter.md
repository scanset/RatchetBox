# IncrementCounter function

Increments the object's hidden counter.

## Syntax

``` syntax
uint IncrementCounter(void);
```

## Parameters

This function has no parameters.

## Return value

Type: **uint**

The pre-incremented counter value.

## Remarks

The bound unordered access view must have [**D3D11\_BUFFER\_UAV\_FLAG\_COUNTER**](/windows/desktop/api/d3d11/ne-d3d11-d3d11_buffer_uav_flag) set during creation for this method to work.

A structured resource can be further indexed based on the component names of the structures.

This function is supported for the following types of shaders:



| Vertex | Hull | Domain | Geometry | Pixel | Compute |
|--------|------|--------|----------|-------|---------|
|        |      |        |          | x     | x       |

## See also

<dl> <dt>

[RWStructuredBuffer](sm5-object-rwstructuredbuffer.md)
</dt> <dt>

[Shader Model 5](d3d11-graphics-reference-sm5.md)
</dt> </dl>

**Header:** httpserv.h
