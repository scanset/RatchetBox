# MB\_GetString function

Returns strings for standard message box buttons.

## Syntax


```C++
LPCWSTR WINAPI MB_GetString(
   UINT wBtn
);
```



## Parameters

<dl> <dt>

*wBtn* 
</dt> <dd>

The id of the string to return. These are identified by the Dialog Box Command ID values listed in winuser.h.

</dd> </dl>

## Return value

The string, or NULL if not found.

## Requirements



| Requirement | Value |
|--------------------|---------------------------------------------------------------------------------------|
| Header<br/>  | <dl> <dt>User.h</dt> </dl>     |
| Library<br/> | <dl> <dt>User32.lib</dt> </dl> |
| DLL<br/>     | <dl> <dt>User32.dll</dt> </dl> |



 

 




