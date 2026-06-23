# TB\_MARKBUTTON message

Sets the highlight state of a given button in a toolbar control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Command identifier for a toolbar button.

</dd> <dt>

*lParam* 
</dt> <dd>

The [**LOWORD**](../winmsg/loword.md) is a **BOOL** that indicates the new highlight state. If **TRUE**, the button is highlighted. If **FALSE**, the button is set to its default state.

The [**HIWORD**](../winmsg/hiword.md) must be zero.

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
