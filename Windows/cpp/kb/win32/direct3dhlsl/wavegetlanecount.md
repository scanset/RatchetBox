# WaveGetLaneCount function

Returns the number of lanes in a wave on this architecture.

## Syntax

``` syntax
uint WaveGetLaneCount(void);
```

## Parameters

This function has no parameters.

## Return value

The result will be between 4 and 128, and includes all waves: active, inactive, and/or helper lanes. The result returned from this function may vary significantly depending on the driver implementation.

## Remarks

This function is supported from shader model 6.0 in all shader stages. 



 

## Examples

``` syntax
 uint laneCount = WaveGetLaneCount();    // number of lanes in wave
```

## See also

<dl> <dt>

[Overview of Shader Model 6](hlsl-shader-model-6-0-features-for-direct3d-12.md)
</dt> <dt>

[Shader Model 6](shader-model-6-0.md)
</dt> </dl>

 

 



