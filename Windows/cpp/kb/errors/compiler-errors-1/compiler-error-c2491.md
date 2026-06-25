# Compiler Error C2491

> 'identifier' : definition of dllimport function not allowed

## Remarks

Data, static data members, and functions can be declared as `dllimport`s but not defined as `dllimport`s.

To fix this issue, remove the `__declspec(dllimport)` specifier from the definition of the function.

## Example

The following example generates C2491:

```cpp
// C2491.cpp
// compile with: /c
// function definition
void __declspec(dllimport) funcB() {}   // C2491

// function declaration
void __declspec(dllimport) funcB();   // OK
```