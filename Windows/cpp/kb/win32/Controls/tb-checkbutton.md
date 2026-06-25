# TB\_CHECKBUTTON message

Checks or unchecks a given button in a toolbar.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Command identifier of the button to check.

</dd> <dt>

*lParam* 
</dt> <dd>

The [**LOWORD**](../winmsg/loword.md) is a **BOOL** that indicates whether to check or uncheck the specified button. If **TRUE**, the check is added. If **FALSE**, the check is removed.

</dd> </dl>

## Return value

Returns **TRUE** if successful, or **FALSE** otherwise.

## Remarks

When a button is checked, it is displayed in the pressed state.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
