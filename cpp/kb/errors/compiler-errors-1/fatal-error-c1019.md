# Fatal Error C1019

> unexpected #else

## Remarks

The `#else` directive appears outside an `#if`, `#ifdef`, or `#ifndef` construct. Use `#else` only within one of these constructs.

## Example

The following example generates C1019:

```cpp
// C1019.cpp
#else   // C1019
#endif

int main() {}
```

Possible resolution:

```cpp
// C1019b.cpp
#if 1
#else
#endif

int main() {}
```