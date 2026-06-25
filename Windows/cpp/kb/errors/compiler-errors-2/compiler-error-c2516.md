# Compiler Error C2516

> 'name' : is not a legal base class

## Remarks

The class is derived from a type name defined by a **`typedef`** statement.

## Example

The following example generates C2516:

```cpp
// C2516.cpp
typedef unsigned long ulong;
class C : public ulong {}; // C2516
```