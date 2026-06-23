# Compiler Error C2449

> found '{' at file scope (missing function header?)

## Remarks

An open brace occurs at file scope.

This error can be caused by a semicolon between a function header and the opening brace of the function definition.

## Example

The following example generates C2449:

```c
// C2449.c
// compile with: /c
void __stdcall func(void) {}   // OK
void __stdcall func(void);  // extra semicolon on this line
{                         // C2449 detected here
```