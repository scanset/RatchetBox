# Compiler Error C3768

> cannot take the address of a virtual vararg function in pure managed code

## Remarks

The **/clr:pure** compiler option is deprecated in Visual Studio 2015 and unsupported in Visual Studio 2017.

When compiling with **/clr:pure**, you cannot take the address of a virtual `vararg` function.

## Example

The following example generates C3768:

```cpp
// C3768.cpp
// compile with: /clr:pure
struct A
{
   virtual void f(...);
};

int main()
{
   &(A::f);   // C3768
}
```