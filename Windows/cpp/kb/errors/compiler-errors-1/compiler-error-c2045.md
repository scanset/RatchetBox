# Compiler Error C2045

> 'identifier' : label redefined

## Remarks

The label appears before multiple statements in the same function.

## Example

The following example generates C2045:

```cpp
// C2045.cpp
int main() {
   label: {
   }
   goto label;
   label: {}   // C2045
}
```