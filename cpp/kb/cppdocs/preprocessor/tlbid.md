# tlbid import attribute

**C++ Specific**

Allows for loading libraries other than the primary type library.

## Syntax

> **#import** *type-library-dll* **tlbid(** *number* **)**

### Parameters

*number*\
The number of the type library in *type-library-dll*.

## Remarks

If multiple type libraries are built into a single DLL, it's possible to load libraries other than the primary type library by using **tlbid**.

For example:

```cpp
#import <MyResource.dll> tlbid(2)
```

is equivalent to:

```cpp
LoadTypeLib("MyResource.dll\\2");
```

**END C++ Specific**

## See also

[#import attributes](../preprocessor/hash-import-attributes-cpp.md)\
[#import directive](../preprocessor/hash-import-directive-cpp.md)