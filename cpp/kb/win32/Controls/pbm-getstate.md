# PBM\_GETSTATE message

Gets the state of the progress bar.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>Must be zero.</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns the current state of the progress bar. One of the following values.



| Return code                                                                                 | Description             |
|---------------------------------------------------------------------------------------------|-------------------------|
| <dl> <dt>**PBST\_NORMAL**</dt> </dl> | In progress.<br/> |
| <dl> <dt>**PBST\_ERROR**</dt> </dl>  | Error.<br/>       |
| <dl> <dt>**PBST\_PAUSED**</dt> </dl> | Paused.<br/>      |



 

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2008 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
