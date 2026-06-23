# `_get_heap_handle`

Returns the handle of the heap that's used by the C run-time system.

## Syntax

```C
intptr_t _get_heap_handle( void );
```

## Return value

Returns the handle to the Win32 heap used by the C run-time system.

## Remarks

Use this function if you want to call [`HeapSetInformation`](/windows/win32/api/heapapi/nf-heapapi-heapsetinformation) and enable the Low Fragmentation Heap on the CRT heap.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_get_heap_handle`** | \<malloc.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Sample

```cpp
// crt_get_heap_handle.cpp
// compile with: /MT
#include <windows.h>
#include <malloc.h>
#include <stdio.h>

int main(void)
{
    intptr_t hCrtHeap = _get_heap_handle();
    ULONG ulEnableLFH = 2;
    if (HeapSetInformation((PVOID)hCrtHeap,
                           HeapCompatibilityInformation,
                           &ulEnableLFH, sizeof(ulEnableLFH)))
        puts("Enabling Low Fragmentation Heap succeeded");
    else
        puts("Enabling Low Fragmentation Heap failed");
    return 0;
}
```

## See also

[Memory allocation](../memory-allocation.md)