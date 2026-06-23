# Compiler Error C2197

> 'function' : too many arguments for call

## Remarks

The compiler detected too many parameters for a call to the function, or an incorrect function declaration.

## Example

The following example generates C2197:

```c
// C2197.c
// compile with: /Za /c
void func( int );
int main() {
   func( 1, 2 );   // C2197 two actual parameters
   func( 2 );   // OK
}
```