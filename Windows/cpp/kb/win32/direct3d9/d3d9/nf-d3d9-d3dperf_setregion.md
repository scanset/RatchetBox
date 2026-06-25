# D3DPERF_SetRegion function

Mark a series of frames with the specified color and name in the PIXRun file. This function is not currently supported by PIX.

## Syntax

```cpp
void WINAPI D3DPERF_SetRegion(
  D3DCOLOR col,
  LPCWSTR wszName
);
```

## Parameters

`col`

Event color. This is the color to display the event in the event view.

`wszName`

Event name.

## Return value

This function doesn't return a value.

## Remarks

To make analysis easier, the target program can use color to mark each level of a target program.

## Requirements
| &nbsp; | &nbsp; |
| ---- |:---- |
| **Target Platform** | Windows |
| **Header** | d3d9.h |
| **Library** | d3d9.lib |
| **DLL** | d3d9.dll |