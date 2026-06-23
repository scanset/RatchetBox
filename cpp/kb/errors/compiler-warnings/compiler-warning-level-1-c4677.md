# Compiler Warning (level 1) C4677

> 'function': signature of non-private member contains assembly private type 'private_type'

## Remarks

A type that has public accessibility outside the assembly uses a type that has private access outside the assembly. A component that references the public assembly type will not be able to use the type member or members that reference the assembly private type.

## Example

The following example generates C4677.

```cpp
// C4677.cpp
// compile with: /clr /c /W1
delegate void TestDel();
public delegate void TestDel2();

public ref class MyClass {
public:
   static event TestDel^ MyClass_Event;   // C4677
   static event TestDel2^ MyClass_Event2;   // OK
};
```