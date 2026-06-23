# RB\_SHOWBAND message

Shows or hides a given band in a rebar control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Zero-based index of a band in the rebar control.

</dd> <dt>

*lParam* 
</dt> <dd>

**BOOL** value that indicates if the band should be shown or hidden. If this value is nonzero, the band will be shown. Otherwise, the band will be hidden.

</dd> </dl>

## Return value

Returns nonzero if successful, or zero otherwise.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
