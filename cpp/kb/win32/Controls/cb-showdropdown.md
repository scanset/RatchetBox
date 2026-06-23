# CB\_SHOWDROPDOWN message

An application sends a **CB\_SHOWDROPDOWN** message to show or hide the list box of a combo box that has the [**CBS\_DROPDOWN**](combo-box-styles.md) or [**CBS\_DROPDOWNLIST**](combo-box-styles.md) style.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

A **BOOL** that specifies whether the drop-down list box is to be shown or hidden. A value of **TRUE** shows the list box; a value of **FALSE** hides it.

</dd> <dt>

*lParam* 
</dt> <dd>

This parameter is not used.

</dd> </dl>

## Return value

The return value is always **TRUE**.

## Remarks

This message has no effect on a combo box created with the [**CBS\_SIMPLE**](combo-box-styles.md) style.

## Requirements



| Requirement | Value |
|-------------------------------------|----------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                                           |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                                     |
| Header<br/>                   | <dl> <dt>Winuser.h (include Windows.h)</dt> </dl> |



## See also

<dl> <dt>

[**CB\_GETDROPPEDSTATE**](cb-getdroppedstate.md)
</dt> </dl>

**Header:** Winuser.h
