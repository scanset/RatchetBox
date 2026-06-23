# Storage of String Literals

The characters of a literal string are stored in order at contiguous memory locations. An escape sequence (such as **\\\\** or **\\"**) within a string literal counts as a single character. A null character (represented by the **\0** escape sequence) is automatically appended to, and marks the end of, each string literal. (This occurs during [translation phase](../preprocessor/phases-of-translation.md) 7.) Note that the compiler may not store two identical strings at two different addresses. [/GF](../build/reference/gf-eliminate-duplicate-strings.md) forces the compiler to place a single copy of identical strings into the executable file.

## Remarks

**Microsoft Specific**

Strings have static storage duration. See [Storage Classes](../c-language/c-storage-classes.md) for information about storage duration.

**END Microsoft Specific**

## See also

[C String Literals](../c-language/c-string-literals.md)