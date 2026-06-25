# /ERRORREPORT (editbin.exe)

> [!NOTE]
> The /ERRORREPORT option is deprecated. Starting in Windows Vista, error reporting is controlled by [Windows Error Reporting (WER)](/windows/win32/wer/windows-error-reporting) settings.

## Syntax

> **/ERRORREPORT** \[ **NONE** \| **PROMPT** \| **QUEUE** \| **SEND** ]

## Remarks

The **/ERRORREPORT** arguments are overridden by the Windows Error Reporting service settings. EDITBIN automatically sends reports of internal errors to Microsoft, if reporting is enabled by Windows Error Reporting. No report is sent if disabled by Windows Error Reporting.

## See also

[EDITBIN Options](editbin-options.md)