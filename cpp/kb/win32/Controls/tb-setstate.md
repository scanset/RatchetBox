# TB\_SETSTATE message

Sets the state for the specified button in a toolbar.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Command identifier of the button.

</dd> <dt>

*lParam* 
</dt> <dd>

The [**LOWORD**](../winmsg/loword.md) is a combination of values listed in [Toolbar Button States](toolbar-button-states.md). The [**HIWORD**](../winmsg/hiword.md) must be zero.

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
