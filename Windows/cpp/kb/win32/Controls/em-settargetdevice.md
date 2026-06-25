# EM\_SETTARGETDEVICE message

Sets the target device and line width used for "what you see is what you get" (WYSIWYG) formatting in a rich edit control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

HDC for the target device.

</dd> <dt>

*lParam* 
</dt> <dd>

Line width to use for formatting.

</dd> </dl>

## Return value

The return value is zero if the operation fails, or nonzero if it succeeds.

## Remarks

The HDC for the default printer can be obtained as follows.


```
PRINTDLG pd = { sizeof(pd) };
pd.Flags = PD_RETURNDC | PD_RETURNDEFAULT;
if (PrintDlg(&pd))
{
    HDC hdc = pd.hDC;
    ...
}
```



If *lParam* is zero, no line breaks are created.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Richedit.h</dt> </dl> |

**Header:** Richedit.h
