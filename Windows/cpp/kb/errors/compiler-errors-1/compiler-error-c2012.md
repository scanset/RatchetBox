# Compiler Error C2012

> missing name following '<'

## Remarks

An `#include` directive lacks the required filename.

## Example

The following example generates C2012:

```cpp
// C2012.cpp
#include <   // C2012 include the filename to resolve
```

Possible resolution:

```cpp
// C2012b.cpp
// compile with: /c
#include <stdio.h>
```