# TCM\_SETPADDING message

Sets the amount of space (padding) around each tab's icon and label in a tab control. You can send this message explicitly or by using the [**TabCtrl\_SetPadding**](/windows/desktop/api/Commctrl/nf-commctrl-tabctrl_setpadding) macro.

## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

The [**LOWORD**](../winmsg/loword.md) is an **INT** value that specifies the amount of horizontal padding, in pixels. The [**HIWORD**](../winmsg/hiword.md) is an **INT** value that specifies the amount of vertical padding, in pixels.

</dd> </dl>

## Return value

No return value.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
