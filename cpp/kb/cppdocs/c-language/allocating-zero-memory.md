# Allocating Zero Memory

**ANSI 4.10.3** The behavior of the `calloc`, `malloc`, or `realloc` function if the size requested is zero

The `calloc`, `malloc`, and `realloc` functions accept zero as an argument. No actual memory is allocated, but a valid pointer is returned and the memory block can be modified later by realloc.

## See also

[Library Functions](../c-language/library-functions.md)