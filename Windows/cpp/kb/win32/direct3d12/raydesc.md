# RayDesc structure

Passed to the [**TraceRay**](traceray-function.md) function to define the origin, direction, and extents of the ray.

## Syntax


```
struct RayDesc
{
    float3 Origin;
    float  TMin;
    float3 Direction;
    float  TMax;
};

```



## Fields

<dl> <dt>

<span id="Origin"></span><span id="origin"></span>**Origin**
</dt> <dd>

The origin of the ray.

</dd> <dt>

<span id="TMin"></span><span id="tmin"></span>**TMin**
</dt> <dd>

The minimum extent of the ray.


</dd> <dt>

<span id="Direction"></span><span id="direction"></span>**Direction**
</dt> <dd>

The direction of the ray.


</dd> <dt>

<span id="TMax"></span><span id="tmax"></span>**TMax**
</dt> <dd>

The maximum extent of the ray.


</dd>

## Requirements



## See also

<dl> <dt>

[Direct3D 12 Raytracing HLSL Reference](direct3d-12-raytracing-hlsl-reference.md)
</dt> </dl>

 

 



