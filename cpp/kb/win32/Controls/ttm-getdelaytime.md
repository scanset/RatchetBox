# TTM\_GETDELAYTIME message

Retrieves the initial, pop-up, and reshow durations currently set for a tooltip control.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Flag that specifies which duration value will be retrieved. This parameter can have one of the following values:



| Value                                                                                                                                                      | Meaning                                                                                                                                         |
|------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| <span id="TTDT_AUTOPOP"></span><span id="ttdt_autopop"></span><dl> <dt>**TTDT\_AUTOPOP**</dt> </dl> | Retrieve the amount of time the tooltip window remains visible if the pointer is stationary within a tool's bounding rectangle.<br/>      |
| <span id="TTDT_INITIAL"></span><span id="ttdt_initial"></span><dl> <dt>**TTDT\_INITIAL**</dt> </dl> | Retrieve the amount of time the pointer must remain stationary within a tool's bounding rectangle before the tooltip window appears.<br/> |
| <span id="TTDT_RESHOW"></span><span id="ttdt_reshow"></span><dl> <dt>**TTDT\_RESHOW**</dt> </dl>    | Retrieve the amount of time it takes for subsequent tooltip windows to appear as the pointer moves from one tool to another.<br/>         |



 

</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

Returns and INT value with the specified duration in milliseconds.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |



## See also

<dl> <dt>

[**TTM\_SETDELAYTIME**](ttm-setdelaytime.md)
</dt> </dl>

**Header:** Commctrl.h
