# Compiler Error C3224

> 'type' : no overloaded generic class takes 'number' generic type arguments

## Remarks

The compiler failed to find an appropriate overload.

## Example

The following example generates C3224:

```
// C3224.cs
// compile with: /target:library
public class C<T> {}
public class C<T,U> {}
```

And then,

```cpp
// C3224b.cpp
// compile with: /clr
#using "C3224.dll"
int main() {
   C<int,int,int>^ c = gcnew C<int,int,int>();   // C3224
   C<int,int>^ c2 = gcnew C<int,int>();   // OK
}
```