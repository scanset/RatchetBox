# Compiler Error C2038

> the std namespace cannot be inline

## Remarks

The C++ standard does not allow the `std` namespace to be declared `inline`.

To resolve this issue, remove the `inline` specifier.