# Compiler Error C2572

> 'class::member' : redefinition of default parameter : parameter param

## Remarks

Default parameters cannot be redefined. If you require another value for the parameter, the default parameter should be left undefined.

## Example

The following example generates C2572:

```cpp
// C2572.cpp
// compile with: /c
void f(int i = 1);   // function declaration

// function definition
void f(int i = 1) {}   // C2572

// try the following line instead
// void f(int i) {}
```