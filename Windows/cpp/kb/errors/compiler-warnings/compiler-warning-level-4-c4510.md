# Compiler Warning (level 4) C4510

> '*class*' : default constructor could not be generated

## Remarks

The compiler can't generate a default constructor for the specified class, which has no user-defined constructors. Objects of this type can't be created.

There are several situations that prevent the compiler from generating a default constructor, including:

- A **`const`** data member.

- A data member that's a reference.

To fix this issue, create a user-defined default constructor for the class that initializes these members.