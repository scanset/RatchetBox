# Compiler Error C2745

> 'token' : this token cannot be converted to an identifier

## Remarks

Identifiers must be comprised of legal characters.

## Example

The following example generates C2745:

```cpp
// C2745.cpp
// compile with: /clr
int main() {
   int __identifier([));   // C2745
}
```