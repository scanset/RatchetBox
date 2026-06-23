# TDM\_ENABLE\_BUTTON message

Enables or disables a push button in a task dialog.

## Parameters

<dl> <dt>

*wParam* \[in\]
</dt> <dd>

An **int** value that specifies the ID of the push button to be enabled or disabled.

</dd> <dt>

*lParam* \[in\]
</dt> <dd>

Specifies button state. Set to 0 to disable the button; set to nonzero to enable the button.

</dd> </dl>

## Return value

The return value is ignored.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
