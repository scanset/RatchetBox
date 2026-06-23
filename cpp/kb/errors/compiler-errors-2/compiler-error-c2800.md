# Compiler Error C2800

> 'operator operator' cannot be overloaded

## Remarks

The following operators cannot be overloaded: class member access (`.`), pointer to member (`.*`), scope resolution (`::`), conditional expression (`? :`), and **`sizeof`**.

## Example

The following example generates C2800:

```cpp
// C2800.cpp
// compile with: /c
class C {
   operator:: ();   // C2800
};
```