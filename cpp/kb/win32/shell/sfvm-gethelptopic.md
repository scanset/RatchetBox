# SFVM\_GETHELPTOPIC message

Allows the callback object to specify an HTML Help file and a topic within it. Used by [**IShellFolderViewCB::MessageSFVCB**](/windows/win32/api/shlobj_core/nf-shlobj_core-ishellfolderviewcb-messagesfvcb).


```C++
SFVM_GETHELPTOPIC 

    lParam = (LPARAM)(SFVM_HELPTOPIC_DATA*) phtd;

            
```



## Parameters

<dl> <dt>

*phtd* \[out\]
</dt> <dd>

The address of a [**SFVM\_HELPTOPIC\_DATA**](/windows/desktop/api/shlobj_core/ns-shlobj_core-sfvm_helptopic_data) structure that specifies the HTML Help file and topic.

</dd> </dl>

## Requirements



| Requirement | Value |
|-------------------------------------|-------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 2000 Professional \[desktop apps only\]<br/>                          |
| Minimum supported server<br/> | Windows 2000 Server \[desktop apps only\]<br/>                                |
| Header<br/>                   | <dl> <dt>Shlobj.h</dt> </dl> |

**Header:** Shlobj.h
