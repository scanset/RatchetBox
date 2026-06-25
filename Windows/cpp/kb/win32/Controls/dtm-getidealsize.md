# DTM\_GETIDEALSIZE message

Gets the size needed to display the control without clipping. Send this message explicitly or by using the [**DateTime\_GetIdealSize**](/windows/desktop/api/Commctrl/nf-commctrl-datetime_getidealsize) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Not used. Must be zero.

</dd> <dt>

*lParam* 
</dt> <dd>

A pointer to a [**SIZE**](/windows/win32/api/windef/ns-windef-size) structure to receive the ideal size. The calling application is responsible for allocating this structure.

</dd> </dl>

## Return value

Returns **TRUE**.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
