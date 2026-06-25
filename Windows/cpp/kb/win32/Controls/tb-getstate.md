# TB\_GETSTATE message

Retrieves information about the state of the specified button in a toolbar, such as whether it is enabled, pressed, or checked.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Command identifier of the button for which to retrieve information.

</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns the button state information if successful, or -1 otherwise. The button state information can be a combination of the values listed in [**Toolbar Button States**](toolbar-button-states.md).

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
