# Linker Tools Warning LNK4010

> invalid subsystem version number number; default subsystem version assumed

## Remarks

You can specify a version for the image's subsystem ([/SUBSYSTEM](../../build/reference/subsystem-specify-subsystem.md)). Each subsystem has a minimum version requirement. If the specified version is lower than the minimum, this warning will occur and the linker will just use the default subsystem.