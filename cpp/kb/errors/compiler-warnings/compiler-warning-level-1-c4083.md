# Compiler Warning (level 1) C4083

> expected 'token'; found identifier 'identifier'

## Remarks

An identifier occurs in the wrong place in a **#pragma** statement.

## Example

The following example generates C4083:

```cpp
// C4083.cpp
// compile with: /W1 /LD
#pragma warning disable:4083    // C4083
#pragma warning(disable:4083)   //correct
```

Check the syntax of the [#pragma](../../preprocessor/pragma-directives-and-the-pragma-keyword.md) directives.