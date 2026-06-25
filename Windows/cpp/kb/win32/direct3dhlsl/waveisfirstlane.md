# WaveIsFirstLane function

Returns true only for the active lane in the current wave with the smallest index.

## Syntax


``` syntax
bool WaveIsFirstLane(void);
```



## Parameters

This function has no parameters.

## Return value

True only for the active lane in the current wave with the smallest index.

## Remarks

This function can be used to identify operations that are to be executed only once per wave.

This function is supported from shader model 6.0 in all shader stages. 



 

## Examples

``` syntax
 if ( WaveIsFirstLane() )
{
    . . . // once per-wave code
}
```

## See also

<dl> <dt>

[Overview of Shader Model 6](hlsl-shader-model-6-0-features-for-direct3d-12.md)
</dt> <dt>

[Shader Model 6](shader-model-6-0.md)
</dt> </dl>

 

 



