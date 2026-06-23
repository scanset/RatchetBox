# Compiler Warning (level 1) C4445

> 'function' : in a WinRT or managed type a virtual method cannot be private

## Remarks

If a virtual function is private, it cannot be accessed by a derived type. To fix this error, change the accessibility of the virtual member function to protected or public.