# NMAKE Fatal Error U1056

> cannot find command processor

## Remarks

The command processor was not in the path specified in the **COMSPEC** or **PATH** environment variables.

NMAKE uses COMMAND.COM or CMD.EXE as a command processor when executing commands. It looks for the command processor first in the path set in **COMSPEC**. If **COMSPEC** does not exist, NMAKE searches the directories specified in **PATH**.