# `srand`

Sets the starting seed value for the pseudorandom number generator used by the **`rand`** function.

## Syntax

```C
void srand(
   unsigned int seed
);
```

### Parameters

*`seed`*\
Seed for pseudorandom number generation

## Remarks

The **`srand`** function sets the starting point for generating a series of pseudorandom integers in the current thread. To reinitialize the generator to create the same sequence of results, call the **`srand`** function and use the same *`seed`* argument again. Any other value for *`seed`* sets the generator to a different starting point in the pseudorandom sequence. **`rand`** retrieves the pseudorandom numbers that are generated. Calling **`rand`** before any call to **`srand`** generates the same sequence as calling **`srand`** with *`seed`* passed as 1.

By default, this function's global state is scoped to the application. To change this behavior, see [Global state in the CRT](../global-state.md).

## Requirements

| Routine | Required header |
|---|---|
| **`srand`** | `<stdlib.h>` |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

See the example for [`rand`](rand.md).

## See also

[Math and floating-point support](../floating-point-support.md)\
[`rand`](rand.md)