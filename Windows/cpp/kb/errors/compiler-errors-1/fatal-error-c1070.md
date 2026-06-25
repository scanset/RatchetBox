# Fatal Error C1070

> mismatched #if/#endif pair in file 'filename'

## Remarks

An `#if`, `#ifdef`, or `#ifndef` directive has no corresponding `#endif`.

## Example

The following example generates C1070:

```cpp
// C1070.cpp
#define TEST

#ifdef TEST

#ifdef TEST
#endif
// C1070
```

Possible resolution:

```cpp
// C1070b.cpp
// compile with: /c
#define TEST

#ifdef TEST
#endif

#ifdef TEST
#endif
```