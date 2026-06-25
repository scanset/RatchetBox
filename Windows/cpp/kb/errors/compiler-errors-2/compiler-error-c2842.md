# Compiler Error C2842

> '*class*' : a managed or WinRT type may not define its own 'operator new' or 'operator delete'

## Remarks

You can define your own **operator new** or **operator delete** to manage memory allocation on the native heap. However, reference classes cannot define these operators because they are only allocated on the managed heap.

For more information, see [User-Defined Operators (C++/CLI)](../../dotnet/user-defined-operators-cpp-cli.md).

## Example

The following example generates C2842.

```cpp
// C2842.cpp
// compile with: /clr /c
ref class G {
   void* operator new( size_t nSize );   // C2842
};
```