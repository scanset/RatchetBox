# ID3DXEffectStateManager::SetTextureStageState method

A callback function that must be implemented by a user to set the texture stage state.

## Syntax


```C++
HRESULT SetTextureStageState(
  [in] DWORD                    Stage,
  [in] D3DTEXTURESTAGESTATETYPE Type,
  [in] DWORD                    Value
);
```



## Parameters

<dl> <dt>

*Stage* \[in\]
</dt> <dd>

Type: **[**DWORD**](../winprog/windows-data-types.md)**

The stage that the texture is assigned to. This is the index value in [**IDirect3DDevice9::SetTexture**](/windows/desktop/api) or [**IDirect3DDevice9::SetTextureStageState**](/windows/win32/api/d3d9helper/nf-d3d9helper-idirect3ddevice9-settexturestagestate).

</dd> <dt>

*Type* \[in\]
</dt> <dd>

Type: **[**D3DTEXTURESTAGESTATETYPE**](./d3dtexturestagestatetype.md)**

Defines the type of operation that a texture stage will perform. See [**D3DTEXTURESTAGESTATETYPE**](./d3dtexturestagestatetype.md).

</dd> <dt>

*Value* \[in\]
</dt> <dd>

Type: **[**DWORD**](../winprog/windows-data-types.md)**

Can be either an operation ([**D3DTEXTUREOP**](./d3dtextureop.md)) or an argument value ([D3DTA](d3dta.md)), depending on what is chosen for Type.

</dd> </dl>

## Return value

Type: **[**HRESULT**](https://msdn.microsoft.com/library/Bb401631(v=MSDN.10).aspx)**

The user-implemented method should return S\_OK. If the callback fails when setting the device state, either of the following will occur:

-   The effect will fail during [**ID3DXEffect::BeginPass**](id3dxeffect--beginpass.md).
-   The dynamic effect state call (such as [**IDirect3DDevice9::SetTextureStageState**](/windows/win32/api/d3d9helper/nf-d3d9helper-idirect3ddevice9-settexturestagestate)) will fail.

## Requirements



| Requirement | Value |
|--------------------|------------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3DX9Effect.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>     |



## See also

<dl> <dt>

[ID3DXEffectStateManager](id3dxeffectstatemanager.md)
</dt> </dl>

 

 