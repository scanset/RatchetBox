# Compiler Error C2170

> 'identifier' : not declared as a function, cannot be intrinsic

### To fix by checking the following possible causes

1. Pragma `intrinsic` is used for an item other than a function.

1. Pragma `intrinsic` is used for a function with no intrinsic form.