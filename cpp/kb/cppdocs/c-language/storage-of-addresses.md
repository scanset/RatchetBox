# Storage of Addresses

The amount of storage required for an address and the meaning of the address depend on the implementation of the compiler. Pointers to different types are not guaranteed to have the same length. Therefore, **sizeof(char \*)** is not necessarily equal to **sizeof(int \*)**.

**Microsoft Specific**

For the Microsoft C compiler, **sizeof(char \*)** is equal to **sizeof(int \*)**.

**END Microsoft Specific**

## See also

[Pointer Declarations](../c-language/pointer-declarations.md)