# Compiler Error C2097

> illegal initialization

### To fix by checking the following possible causes

1. Initialization of a variable using a nonconstant value.

1. Initialization of a short address with a long address.

1. Initialization of a local structure, union, or array with a nonconstant expression when compiling with **/Za**.

1. Initialization with an expression containing a comma operator.

1. Initialization with an expression that is neither constant nor symbolic.