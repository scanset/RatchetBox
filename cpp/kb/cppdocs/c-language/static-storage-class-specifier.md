# static Storage-Class Specifier

A variable declared at the internal level with the **`static`** storage-class specifier has a global lifetime but is visible only within the block in which it is declared. For constant strings, using **`static`** is useful because it alleviates the overhead of frequent initialization in often-called functions.

## Remarks

If you do not explicitly initialize a **`static`** variable, it is initialized to 0 by default. Inside a function, **`static`** causes storage to be allocated and serves as a definition. Internal static variables provide private, permanent storage visible to only a single function.

## See also

[C Storage Classes](c-storage-classes.md)<br/>
[Storage classes (C++)](../cpp/storage-classes-cpp.md)