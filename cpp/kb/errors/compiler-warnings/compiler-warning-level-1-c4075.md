# Compiler Warning (level 1) C4075

> initializers put in unrecognized initialization area

## Remarks

A [#pragma init_seg](../../preprocessor/init-seg.md) uses an unrecognized section name. The compiler ignores the **pragma** command.

## Example

The following example generates C4075:

```cpp
// C4075.cpp
// compile with: /W1
#pragma init_seg("mysegg")   // C4075

// try..
// #pragma init_seg(user)

int main() {
}
```