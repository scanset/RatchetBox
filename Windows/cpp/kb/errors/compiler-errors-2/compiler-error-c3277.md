# Compiler Error C3277

> cannot define an unmanaged enum 'enum' inside managed 'type'

## Remarks

An enumeration was defined incorrectly inside a managed type.

## Example

The following example generates C3277:

```cpp
// C3277a.cpp
// compile with: /clr
ref class A
{
   enum E {e1,e2};   // C3277
   // try the following line instead
   // enum class E {e1,e2};
};

int main()
{
}
```