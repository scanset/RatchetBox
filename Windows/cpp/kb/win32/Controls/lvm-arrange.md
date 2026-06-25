# LVM\_ARRANGE message

Arranges items in icon view. You can send this message explicitly or by using the [**ListView\_Arrange**](/windows/desktop/api/Commctrl/nf-commctrl-listview_arrange) macro.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

One of the following values that specifies alignment:



| Value                                                                                                                                                            | Meaning                                                                                                              |
|------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------|
| <span id="LVA_ALIGNLEFT"></span><span id="lva_alignleft"></span><dl> <dt>**LVA\_ALIGNLEFT**</dt> </dl>    | Not implemented. Apply the [**LVS\_ALIGNLEFT**](list-view-window-styles.md) style instead.<br/> |
| <span id="LVA_ALIGNTOP"></span><span id="lva_aligntop"></span><dl> <dt>**LVA\_ALIGNTOP**</dt> </dl>       | Not implemented. Apply the [**LVS\_ALIGNTOP**](list-view-window-styles.md) style instead.<br/>   |
| <span id="LVA_DEFAULT"></span><span id="lva_default"></span><dl> <dt>**LVA\_DEFAULT**</dt> </dl>          | Aligns items according to the list-view control's current alignment styles (the default value).<br/>           |
| <span id="LVA_SNAPTOGRID"></span><span id="lva_snaptogrid"></span><dl> <dt>**LVA\_SNAPTOGRID**</dt> </dl> | Snaps all icons to the nearest grid position.<br/>                                                             |



 

</dd> <dt>

*lParam* 
</dt> <dd>

Must be zero.

</dd> </dl>

## Return value

Returns **TRUE** if successful; otherwise, **FALSE**.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
