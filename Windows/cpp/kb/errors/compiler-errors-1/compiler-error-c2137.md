# Compiler Error C2137

> empty character constant

## Remarks

The empty character constant ( ' ' ) is not permitted.

## Example

The following example generates C2137:

```cpp
// C2137.cpp
int main() {
   char c = '';   // C2137
   char d = ' ';   // OK
}
```