# /TLS

Displays the IMAGE_TLS_DIRECTORY structure from an executable.

## Remarks

/TLS displays the fields of the TLS structure as well as the addresses of the TLS callback functions.

If a program does not use thread local storage, its image will not contain a TLS structure.  See [thread](../../cpp/thread.md) for more information.

IMAGE_TLS_DIRECTORY is defined in winnt.h.

## See also

[DUMPBIN Options](dumpbin-options.md)