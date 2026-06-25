# TBM\_SETTICFREQ message

Sets the interval frequency for tick marks in a trackbar. For example, if the frequency is set to two, a tick mark is displayed for every other increment in the trackbar's range. The default setting for the frequency is one; that is, every increment in the range is associated with a tick mark.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Frequency of the tick marks.

</dd> <dt>

*lParam* 
</dt> <dd>Must be zero.</dd> </dl>

## Return value

No return value.

## Remarks

The trackbar must have the [**TBS\_AUTOTICKS**](trackbar-control-styles.md) style to use this message.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
