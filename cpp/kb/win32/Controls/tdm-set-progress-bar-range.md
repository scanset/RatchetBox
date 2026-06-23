# TDM\_SET\_PROGRESS\_BAR\_RANGE message

Sets the minimum and maximum values for the progress bar in a task dialog.

## Parameters

<dl> <dt>

*wParam* \[in\]
</dt> <dd>

Must be zero.

</dd> <dt>

*lParam* \[in\]
</dt> <dd>

The [**LOWORD**](../winmsg/loword.md) specifies the minimum value. By default, the minimum value is zero. The [**HIWORD**](../winmsg/hiword.md) specifies the maximum value. By default, the maximum value is 100.

</dd> </dl>

## Return value

Returns the previous minimum and maximum values, if successful, or zero otherwise. The [**LOWORD**](../winmsg/loword.md) contains the minimum value, and the [**HIWORD**](../winmsg/hiword.md) contains the maximum value.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
