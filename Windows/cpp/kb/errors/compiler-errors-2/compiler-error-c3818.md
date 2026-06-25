# Compiler Error C3818

> array property declaration 'property1' shall not overload an index property 'property2'

## Remarks

An overload is not possible for properties when one is an indexer and the other is an array property.

C3818 is only reachable using the obsolete compiler option **/clr:oldSyntax**.