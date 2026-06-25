# Compiler Error C2201

> '*identifier*' : must have external linkage in order to be exported/imported

## Remarks

The exported identifier is **`static`**.

## Example

The following example generates C2201, and shows how to fix it:

```cpp
// C2201.cpp
// compile with: /c
__declspec(dllexport) static void func() {}   // C2201 func() is static
__declspec(dllexport) void func2() {}   // OK
```

## See also

[Types of Linkage](../../cpp/program-and-linkage-cpp.md)