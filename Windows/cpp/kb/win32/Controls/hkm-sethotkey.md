# HKM\_SETHOTKEY message

Sets the hot key combination for a hot key control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

The [**LOBYTE**](../winmsg/lobyte.md) of the [**LOWORD**](../winmsg/loword.md) is the virtual key code of the hot key. The [**HIBYTE**](../winmsg/hibyte.md) of the **LOWORD** is the key modifier that indicates the keys that define a hot key combination. For a list of modifier flag values, see the description of the [**HKM\_GETHOTKEY**](hkm-gethotkey.md) message.

</dd> <dt>

*lParam* 
</dt> <dd>

Not used; must be zero.

</dd> </dl>

## Return value

Always returns zero.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
