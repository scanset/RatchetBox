# Compiler Error C2605

> 'name' : this method is reserved within a managed or WinRT class

## Remarks

Certain names are reserved by the compiler for internal functions.  For more information, see [Destructors and finalizers](../../dotnet/how-to-define-and-consume-classes-and-structs-cpp-cli.md#BKMK_Destructors_and_finalizers).

## Example

The following example generates C2605.

```cpp
// C2605.cpp
// compile with: /clr /c
ref class R {
protected:
   void Finalize() {}   // C2605
};
```