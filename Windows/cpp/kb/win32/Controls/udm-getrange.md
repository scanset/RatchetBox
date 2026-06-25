# UDM\_GETRANGE message

Retrieves the minimum and maximum positions (range) for an up-down control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

The return value is a 32-bit value that contains the minimum and maximum positions. The [**LOWORD**](../winmsg/loword.md) is the maximum position for the control, and the [**HIWORD**](../winmsg/hiword.md) is the minimum position.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
