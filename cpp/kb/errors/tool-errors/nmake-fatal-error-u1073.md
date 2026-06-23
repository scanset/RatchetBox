# NMAKE Fatal Error U1073

> don't know how to make 'targetname'

## Remarks

The specified target does not exist, and there is no command to execute or inference rule to apply.

### To fix by using the following possible solutions

1. Check the spelling of the target name.

1. If *targetname* is a pseudotarget, specify it as a target in another description block.

1. If *targetname* is a macro invocation, be sure it does not expand to a null string.