# ADMIN Action

The ADMIN action is a top-level action used to perform [administrative installations](administrative-installation.md).

## Sequence Restrictions

There are no sequence restrictions.

## ActionData Messages

There are no ActionData messages.

## Remarks

The ADMIN action is not called from within the action table sequence, Windows Installer executes this action when [**MsiInstallProduct**](/windows/desktop/api/Msi/nf-msi-msiinstallproducta) is called with the *szCommandLine* parameter set to "ACTION=ADMIN" or the command line executable Msiexec.exe is called with the '/a' command line switch.

## Related topics

<dl> <dt>

[AdminUISequence Table](adminuisequence-table.md)
</dt> <dt>

[AdminExecuteSequence Table](adminexecutesequence-table.md)
</dt> </dl>

 

 


