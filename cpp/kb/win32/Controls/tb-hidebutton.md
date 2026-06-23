# TB\_HIDEBUTTON message

Hides or shows the specified button in a toolbar.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Command identifier of the button to hide or show.

</dd> <dt>

*lParam* 
</dt> <dd>

The [**LOWORD**](../winmsg/loword.md) is a **BOOL** that indicates whether to hide or show the specified button. If **TRUE**, the button is hidden. If **FALSE**, the button is shown.

The [**HIWORD**](../winmsg/hiword.md) must be zero.

</dd> </dl>

## Return value

Returns **TRUE** if successful, or **FALSE** otherwise.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
