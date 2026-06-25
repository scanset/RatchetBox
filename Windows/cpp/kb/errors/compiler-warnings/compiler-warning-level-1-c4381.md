# Compiler Warning (level 1) C4381

> 'function1': interface method will not be implemented by non-public method 'function2'

## Remarks

A class must implement all function in an interface. A class can satisfy this condition if one of its base classes implements the function. However, the function must be implemented as a public function.