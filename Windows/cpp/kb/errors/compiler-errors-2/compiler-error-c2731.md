# Compiler Error C2731

> 'identifier' : function cannot be overloaded

## Remarks

The functions `main`, `WinMain`, `DllMain`, and `LibMain` cannot be overloaded.

## Example

The following example generates C2731:

```cpp
// C2731.cpp
extern "C" void WinMain(int, char *, char *);
void WinMain(int, short, char *, char*);   // C2731
```