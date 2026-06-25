# Compiler Error C2241

> 'identifier' : member access is restricted

## Remarks

Code attempts to access a private or protected member.

### To fix by using the following possible solutions

1. Change the access level of the member.

1. Declare the member a **`friend`** of the accessing function.