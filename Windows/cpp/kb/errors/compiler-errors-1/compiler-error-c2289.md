# Compiler Error C2289

> same type qualifier used more than once

## Remarks

A type declaration or definition uses a type qualifier (**`const`**, **`volatile`**, **`signed`**, or **`unsigned`**) more than once, causing an error under ANSI compatibility (**/Za**).

## Example

The following example generates C2289:

```cpp
// C2289.cpp
// compile with: /Za /c
volatile volatile int i;   // C2289
volatile int j;   // OK
```