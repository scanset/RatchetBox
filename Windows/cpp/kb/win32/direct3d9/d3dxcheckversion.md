# D3DXCheckVersion function

Verify that the version of D3DX you compiled with is the version that you are running.

## Syntax


```C++
BOOL D3DXCheckVersion(
  _In_ UINT D3DSDKVersion,
  _In_ UINT D3DXSDKVersion
);
```



## Parameters

<dl> <dt>

*D3DSDKVersion* \[in\]
</dt> <dd>

Type: **[**UINT**](../winprog/windows-data-types.md)**

Use D3D\_SDK\_VERSION. See remarks.

</dd> <dt>

*D3DXSDKVersion* \[in\]
</dt> <dd>

Type: **[**UINT**](../winprog/windows-data-types.md)**

Use D3DX\_SDK\_VERSION. See remarks.

</dd> </dl>

## Return value

Type: **[**BOOL**](../winprog/windows-data-types.md)**

Returns **TRUE** if the version of D3DX you compiled against is the version you are running with; otherwise, **FALSE** is returned.

## Remarks

Use this function during the initialization of your application like this:


```
HRESULT CD3DXMyApplication::Initialize(HINSTANCE hInstance, 
  LPCSTR szWindowName, LPCSTR szClassName, UINT uWidth, UINT uHeight)
{
    HRESULT hr;
    
    if (!D3DXCheckVersion(D3D_SDK_VERSION, D3DX_SDK_VERSION))
        return E_FAIL;
    
    ...
}
```



Use [**Direct3DCreate9**](/windows/win32/api/d3d9/nf-d3d9-direct3dcreate9) to verify that the correct runtime is installed.

## Requirements



| Requirement | Value |
|--------------------|----------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>D3dx9core.h</dt> </dl> |
| Library<br/> | <dl> <dt>D3dx9.lib</dt> </dl>   |



## See also

<dl> <dt>

[General Purpose Functions](dx9-graphics-reference-d3dx-functions-general-purpose.md)
</dt> </dl>

 

 