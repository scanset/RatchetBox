# Improper Access to a Union

**ANSI 3.3.2.3** A member of a union object is accessed using a member of a different type

If a union of two types is declared and one value is stored, but the union is accessed with the other type, the results are unreliable.

For example, a union of **`float`** and **`int`** is declared. A **`float`** value is stored, but the program later accesses the value as an **`int`**. In such a situation, the value would depend on the internal storage of **`float`** values. The integer value would not be reliable.

## See also

[Structures, Unions, Enumerations, and Bit Fields](../c-language/structures-unions-enumerations-and-bit-fields.md)