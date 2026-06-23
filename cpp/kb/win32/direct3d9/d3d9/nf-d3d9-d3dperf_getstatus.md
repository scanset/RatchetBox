# D3DPERF_GetStatus function

Determine the current state of the profiler from the target program.

## Syntax

```cpp
DWORD WINAPI D3DPERF_GetStatus( void );
```

## Return value

A non-zero value when PIX is profiling the target program; otherwise, zero.

## Requirements
| &nbsp; | &nbsp; |
| ---- |:---- |
| **Target Platform** | Windows |
| **Header** | d3d9.h |
| **Library** | d3d9.lib |
| **DLL** | d3d9.dll |