# Compiler Error C3118

> 'interface' : interfaces do not support virtual inheritance

## Remarks

You tried to virtually inherit from an interface.

## Example

For example,

```cpp
// C3118.cpp
__interface I1 {
};

__interface I2 : virtual I1 {   // C3118
};
```

generates this error.