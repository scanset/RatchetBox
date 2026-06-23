# D3DMEMORYPRESSURE structure (D3d9types.h) for Microsoft Media Foundation

Contains data for memory pressure reporting.

## Syntax


```C++
typedef struct _D3DMEMORYPRESSURE {
  UINT64 BytesEvictedFromProcess;
  UINT64 SizeOfInefficientAllocation;
  DWORD  LevelOfEfficiency;
} D3DMEMORYPRESSURE;
```



## Members

<dl> <dt>

**BytesEvictedFromProcess**
</dt> <dd>

The number of bytes that were evicted by the process during the duration of the query.

</dd> <dt>

**SizeOfInefficientAllocation**
</dt> <dd>

The total number of bytes placed in nonoptimal memory segments, due to inadequate space within the preferred memory segments.

</dd> <dt>

**LevelOfEfficiency**
</dt> <dd>

The overall efficiency of the memory allocations that were placed in nonoptimal memory. The value is expressed as a percentage. For example, the value 95 indicates that the allocations placed in nonpreferred memory segments are 95% efficient. This number should not be considered an exact measurement.

</dd> </dl>

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------------------------|
| Minimum supported client | Windows 7 \[desktop apps only\]                                                              |
| Minimum supported server | Windows Server 2008 R2 \[desktop apps only\]                                                 |
| Header                  | D3d9types.h (include D3d9.h) |



## See also

<dl> <dt>

[Direct3D Video Structures](direct3d-video-structures.md)
</dt> <dt>

[Memory Pressure Reporting](memory-pressure-reporting.md)
</dt> </dl>

**Header:** d3d9types.h
