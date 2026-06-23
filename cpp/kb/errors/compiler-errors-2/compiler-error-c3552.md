# Compiler Error C3552

> 'typename': a late specified return type cannot contain 'auto'

## Remarks

If you use the **`auto`** keyword as a placeholder for the return type of a function, you must provide a late-specified return type. However, you cannot use another **`auto`** keyword to specify the late-specified return type.

## Example

For example, the following code fragment yields error C3552.

`auto myFunction->auto; // C3552`