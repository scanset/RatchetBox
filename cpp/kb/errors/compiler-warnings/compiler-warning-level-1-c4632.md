# Compiler Warning (level 1) C4632

> XML document comment: file - access denied: reason

## Remarks

The path to .xdc file (`file`) was not valid, and no .xdc file created.

## Example

The following example generates C4632:

```cpp
// C4632.cpp
// compile with: /clr /docv:\\falsedir /LD /W1
// C4632 expected

/// Text for class MyClass.
public ref class MyClass {};
```