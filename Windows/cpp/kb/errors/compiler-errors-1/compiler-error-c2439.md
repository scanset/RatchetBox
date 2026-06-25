# Compiler Error C2439

> 'identifier' : member could not be initialized

## Remarks

A class, structure, or union member cannot be initialized.

### To fix by checking the following possible causes

1. Trying to initialize an indirect base class or structure.

1. Trying to initialize an inherited member of a class or structure. An inherited member must be initialized by the constructor of the class or structure.