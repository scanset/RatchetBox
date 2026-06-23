# Fatal Error C1022

> expected #endif

## Remarks

An `#if`, `#ifdef`, or `#ifndef` directive has no matching `#endif` directive. Be sure each `#if`, `#ifdef`, or `#ifndef` has a matching `#endif`.

## Example

The following example generates C1022:

```cpp
// C1022.cpp
#define true 1

#if (true)
#else
#else    // C1022
```

Possible resolution:

```cpp
// C1022b.cpp
// compile with: /c
#define true 1

#if (true)
#else
#endif
```