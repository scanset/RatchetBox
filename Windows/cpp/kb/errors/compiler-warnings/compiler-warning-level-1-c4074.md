# Compiler Warning (level 1) C4074

> initializers put in compiler reserved initialization area

## Remarks

The compiler initialization area, which is specified by [#pragma init_seg](../../preprocessor/init-seg.md), is reserved by Microsoft. Code in this area may be executed before initialization of the C run-time library.

## Example

The following example generates C4074:

```cpp
// C4074.cpp
// compile with: /W1
#pragma init_seg( compiler )   // C4074

// try this line to resolve the warning
// #pragma init_seg(user)

int main() {
}
```