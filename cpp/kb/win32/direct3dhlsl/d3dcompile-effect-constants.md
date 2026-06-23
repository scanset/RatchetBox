# D3DCOMPILE\_EFFECT Constants

These constants direct how the compiler compiles an effect file or how the runtime processes the effect file.

<dl> <dt>

<span id="D3DCOMPILE_EFFECT_CHILD_EFFECT"></span><span id="d3dcompile_effect_child_effect"></span>**D3DCOMPILE\_EFFECT\_CHILD\_EFFECT**
</dt> <dd> <dl> <dt>

(1 << 0)
</dt> <dt>



Compile the effects (.fx) file to a child effect. Child effects have no initializers for any shared values because these child effects are initialized in the master effect (the effect pool).

> [!Note]  
> Effect pools are supported by Effects 10 (FX10) but not by Effects 11 (FX11). For more info about differences between effect pools in Direct3D 10 and effect groups in Direct3D 11, see [Effect Pools and Groups](/windows/desktop/direct3d11/d3d11-graphics-programming-guide-effects-differences).

 


</dt> </dl> </dd> <dt>

<span id="D3DCOMPILE_EFFECT_ALLOW_SLOW_OPS"></span><span id="d3dcompile_effect_allow_slow_ops"></span>**D3DCOMPILE\_EFFECT\_ALLOW\_SLOW\_OPS**
</dt> <dd> <dl> <dt>

(1 << 1)
</dt> <dt>



Disables performance mode and allows for mutable state objects.

By default, performance mode is enabled. Performance mode disallows mutable state objects by preventing non-literal expressions from appearing in state object definitions.


</dt> </dl> </dd> </dl>

## Requirements



| Requirement | Value |
|-------------------|------------------------------------------------------------------------------------------|
| Header<br/> | <dl> <dt>D3DCompiler.h</dt> </dl> |



## See also

<dl> <dt>

[D3DCompiler Constants](dx-graphics-d3dcompiler-reference-constants.md)
</dt> </dl>

**Header:** D3DCompiler.h
