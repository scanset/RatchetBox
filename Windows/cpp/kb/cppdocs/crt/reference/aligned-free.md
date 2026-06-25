# `_aligned_free`

Frees a block of memory that was allocated with [`_aligned_malloc`](aligned-malloc.md) or [`_aligned_offset_malloc`](aligned-offset-malloc.md).

## Syntax

```C
void _aligned_free (
   void *memblock
);
```

### Parameters

*`memblock`*\
A pointer to the memory block that was returned to the `_aligned_malloc` or `_aligned_offset_malloc` function.

## Remarks

**`_aligned_free`** is marked `__declspec(noalias)`, meaning that the function is guaranteed not to modify global variables. For more information, see [`noalias`](../../cpp/noalias.md).

This function doesn't validate its parameter, unlike the other _aligned CRT functions. If *`memblock`* is a `NULL` pointer, this function simply performs no actions. It doesn't change `errno` and it doesn't invoke the invalid parameter handler. If an error occurs in the function because `_aligned` functions weren't used to allocate the block of memory, or a misalignment of memory occurs due to some unforeseen calamity, the function generates a debug report from the [`_RPT`, `_RPTF`, `_RPTW`, `_RPTFW` macros](rpt-rptf-rptw-rptfw-macros.md).

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`_aligned_free`** | \<malloc.h> |

## Example

For more information, see [`_aligned_malloc`](aligned-malloc.md).

## See also

[Data alignment](../data-alignment.md)