# D3D12SDKVersion symbol

The Direct3D 12 SDK version number.

## Syntax

```cpp
extern "C" { _declspec(dllexport) extern const UINT D3D12SDKVersion = n;}
```

## Return value

A [UINT](../winprog/windows-data-types.md) containing the Direct3D 12 SDK version number.

## Remarks

**D3D12SDKVersion** isn't associated with an import library nor a header file.

## Requirements

| &nbsp; | &nbsp; |
| ---- |:---- |
| **Target Platform** | Windows |
| **Header** | N/A |
| **Library** | N/A |
| **DLL** | d3d12core.dll |

## See also