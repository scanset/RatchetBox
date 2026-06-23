# Heap constants

## Syntax

```C
#include <malloc.h>
```

## Remarks

These constants give the return value indicating status of the heap.

| Constant | Meaning |
|---|---|
| `_HEAPBADBEGIN` | Initial header information wasn't found or was invalid. |
| `_HEAPBADNODE` | Bad node was found, or heap is damaged. |
| `_HEAPBADPTR` | `_pentry` field of `_HEAPINFO` structure doesn't contain valid pointer into heap (`_heapwalk` routine only). |
| `_HEAPEMPTY` | Heap hasn't been initialized. |
| `_HEAPEND` | End of heap was reached successfully (`_heapwalk` routine only). |
| `_HEAPOK` | Heap is consistent (`_heapset` and `_heapchk` routines only). No errors so far; `_HEAPINFO` structure contains information about next entry (`_heapwalk` routine only). |

## See also

[`_heapchk`](./reference/heapchk.md)\
[`_heapset`](./heapset.md)\
[`_heapwalk`](./reference/heapwalk.md)\
[Global constants](./global-constants.md)