# Compiler Warning (level 4) C4513

> 'class' : destructor could not be generated

## Remarks

The compiler cannot generate a default destructor for the given class; no destructor was created. The destructor is in a base class that is not accessible to the derived class. If the base class has a private destructor, make it public or protected.