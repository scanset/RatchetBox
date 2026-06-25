# Linker Tools Error LNK1166

> cannot adjust code at offset=offset, va=value

## Remarks

LINK was unable to pad the code as required.

Certain instructions are not allowed to cross page boundaries on some processors. LINK attempts to add pads to correct this situation. In this case, LINK could not work around the problem.