# HDM\_SETFILTERCHANGETIMEOUT message

Sets the timeout interval between the time a change takes place in the filter attributes and the posting of an [HDN\_FILTERCHANGE](hdn-filterchange.md) notification. You can send this message explicitly or use the [**Header\_SetFilterChangeTimeout**](/windows/desktop/api/Commctrl/nf-commctrl-header_setfilterchangetimeout) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>

The timeout value, in milliseconds.

</dd> </dl>

## Return value

Returns the index of the filter control being modified.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[HDN\_FILTERCHANGE](hdn-filterchange.md)
</dt> </dl>

**Header:** Commctrl.h
