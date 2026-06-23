# Fatal Error C1012

> unmatched parenthesis: missing 'character'

## Remarks

The parentheses in a preprocessor directive do not match.

## Example

The following example generates C1012:

```cpp
// C1012.cpp
// compile with: /c
#if (0   // C1012
#endif
```