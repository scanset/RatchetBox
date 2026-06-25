# RB\_MOVEBAND message

Moves a band from one index to another.

## Parameters

<dl> <dt>

*wParam* 
</dt> <dd>

Zero-based index of the band to be moved.

</dd> <dt>

*lParam* 
</dt> <dd>

Zero-based index of the new band position.

</dd> </dl>

## Return value

Returns nonzero if successful, or zero otherwise.

## Remarks

This message will most likely change the index of other bands in the rebar control. If a band is moved from index 6 to index 0, all of the bands in between will have their index incremented by one.

*lParam* must never be greater than the number of bands minus one. The number of bands can be obtained with the [**RB\_GETBANDCOUNT**](rb-getbandcount.md) message.

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
