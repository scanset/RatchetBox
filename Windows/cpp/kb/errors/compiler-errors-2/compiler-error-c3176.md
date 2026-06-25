# Compiler Error C3176

> 'type' : cannot declare local value type

## Remarks

A class can only be declared as a value type at global scope.

## Example

The following example generates C3176.

```cpp
// C3176.cpp
// compile with: /clr
int main () {
   enum class C {};   // C3176
}
```