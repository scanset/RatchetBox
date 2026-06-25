# NMAKE Fatal Error U1070

> cycle in macro definition 'macroname'

## Remarks

The given macro definition contained a macro whose definition contained the given macro. Circular macro definitions are invalid.

## Example

The following macro definitions

```
ONE=$(TWO)
TWO=$(ONE)
```

cause the following error:

```
cycle in macro definition 'TWO'
```