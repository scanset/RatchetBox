# TBN\_WRAPACCELERATOR notification code

Requests the index of the button in one or more toolbars corresponding to the specified accelerator character. This notification code is sent in the form of a [**WM\_NOTIFY**](wm-notify.md) message.


```C++
TBN_WRAPACCELERATOR

    lpnmtb = (NMTBWRAPACCELERATOR) lParam; 
```



## Parameters

<dl> <dt>

*lParam* 
</dt> <dd>

A pointer to a structure that contains the accelerator key character, and that receives the index of the corresponding button. The index is -1 if the accelerator does not correspond to a command.

</dd> </dl>

## Return value

**TRUE** if an index is returned, otherwise **FALSE**.

## Remarks

Applications with one or more toolbars may receive this notification code.

The **NMTBWRAPACCELERATOR** structure must be defined by the application as follows:

``` syntax
typedef struct tagNMTBWRAPACCELERATOR {
    NMHDR hdr;
    UINT ch;
    int iButton;
} NMTBWRAPACCELERATOR, *LPNMTBWRAPACCELERATOR;
```

## Requirements



| Requirement | Value |
|-------------------------------------|---------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows Vista \[desktop apps only\]<br/>                                        |
| Minimum supported server<br/> | Windows Server 2003 \[desktop apps only\]<br/>                                  |
| Header<br/>                   | <dl> <dt>Commctrl.h</dt> </dl> |

**Header:** Commctrl.h
