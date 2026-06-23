# Compiler Error C3295

'#pragma pragma' can only be used at global or namespace scope

Some pragmas cannot be used in a function.  See [Pragma directives and the `__pragma` and `_Pragma` keywords](../../preprocessor/pragma-directives-and-the-pragma-keyword.md) for more information.

## Example

The following sample generates C3295.

```cpp
// C3295.cpp
int main() {
   #pragma managed   // C3295
}
```