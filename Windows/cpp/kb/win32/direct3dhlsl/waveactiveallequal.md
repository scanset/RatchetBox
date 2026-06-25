# WaveActiveAllEqual function

Returns true if the expression is the same for every active lane in the current wave (and thus uniform across it).

## Syntax


``` syntax
<bool-type> WaveActiveAllEqual(
   <type> expr
);
```



## Parameters

<dl> <dt>

*expr* 
</dt> <dd>

The expression to evaluate.
`<type>` can be a basic scalar, vector, or matrix type.

</dd> </dl>

## Return value

Returns `true` for each component of `expr` that is the same for every active lane in the current wave.

`<bool-type>` will be a scalar, vector, or matrix of `bool`, matching the dimensionality of the input `<type>`.
For instance, an input `<type>` of `matrix<float, 4, 3>` will result in a return `<bool-type>` of `matrix<bool, 4, 3>`.

## Remarks

This function is supported from shader model 6.0 in all shader stages. 



 

## See also

<dl> <dt>

[Overview of Shader Model 6](hlsl-shader-model-6-0-features-for-direct3d-12.md)
</dt> <dt>

[Shader Model 6](shader-model-6-0.md)
</dt> </dl>

 

 



