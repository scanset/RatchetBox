# `_heapchk`

Runs consistency checks on the heap.

## Syntax

```C
int _heapchk( void );
```

## Return value

**`_heapchk`** returns one of the following integer manifest constants defined in Malloc.h.

| Return value | Condition |
|---|---|
| `_HEAPBADBEGIN` | Initial header information is bad or can't be found. |
| `_HEAPBADNODE` | Bad node has been found or heap is damaged. |
| `_HEAPBADPTR` | Pointer into heap isn't valid. |
| `_HEAPEMPTY` | Heap hasn't been initialized. |
| `_HEAPOK` | Heap appears to be consistent. |

In addition, if an error occurs, **`_heapchk`** sets `errno` to `ENOSYS`.

## Remarks

The **`_heapchk`** function helps debug heap-related problems by checking for minimal consistency of the heap. If the operating system doesn't support **`_heapchk`** (for example, Windows 98), the function returns `_HEAPOK` and sets `errno` to `ENOSYS`.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header | Optional header |
|---|---|---|
| **`_heapchk`** | \<malloc.h> | \<errno.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

```C
// crt_heapchk.c
// This program checks the heap for
// consistency and prints an appropriate message.

#include <malloc.h>
#include <stdio.h>

int main( void )
{
   int  heapstatus;
   char *buffer;

   // Allocate and deallocate some memory
   if( (buffer = (char *)malloc( 100 )) != NULL )
      free( buffer );

   // Check heap status
   heapstatus = _heapchk();
   switch( heapstatus )
   {
   case _HEAPOK:
      printf(" OK - heap is fine\n" );
      break;
   case _HEAPEMPTY:
      printf(" OK - heap is empty\n" );
      break;
   case _HEAPBADBEGIN:
      printf( "ERROR - bad start of heap\n" );
      break;
   case _HEAPBADNODE:
      printf( "ERROR - bad node in heap\n" );
      break;
   }
}
```

```Output
OK - heap is fine
```

## See also

[Memory allocation](../memory-allocation.md)\
[`_heapadd`](../heapadd.md)\
[`_heapmin`](heapmin.md)\
[`_heapset`](../heapset.md)\
[`_heapwalk`](heapwalk.md)