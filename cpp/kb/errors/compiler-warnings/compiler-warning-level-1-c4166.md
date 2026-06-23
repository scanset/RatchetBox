# Compiler Warning (level 1) C4166

> illegal calling convention for constructor/destructor

## Remarks

Constructors and destructors cannot have calling conventions other than the default for the platform (except when you explicitly specify **__clrcall**).