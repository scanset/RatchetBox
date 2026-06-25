# Compiler Error C3180

> 'type name' : name exceeds meta-data limit of 'limit' characters

## Remarks

The compiler truncated the name for a managed type in metadata. The truncation will make the type unusable with the `#using` directive (or the equivalent in another language).

The type-name limit includes any namespace qualifications.