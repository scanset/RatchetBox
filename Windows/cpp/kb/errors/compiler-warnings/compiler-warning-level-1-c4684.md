# Compiler Warning (level 1) C4684

> 'attribute' : WARNING!! attribute may cause invalid code generation: use with caution

## Remarks

You used an attribute that should not commonly be used.

## Example

The following example generates C4684:

```cpp
// C4684.cpp
// compile with: /W1 /LD
[module(name="xx")]; // C4684 expected
[no_injected_text];
```