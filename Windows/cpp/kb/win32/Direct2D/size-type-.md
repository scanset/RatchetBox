# Size&lt;Type&gt; Function

Creates a size structure that stores its width and height using the specified data type.

``` syntax
template<typename Type>
typename TypeTraits<Type>::Size Size(
  Type width,
  Type height
);
```

## Template Parameters



| Parameter | Description                                                                                         |
|-----------|-----------------------------------------------------------------------------------------------------|
| Type      | The data type used to store the width and height of the size. Possible values are FLOAT and UINT32. |



 

## Parameters



| Parameter | Description        |
|-----------|--------------------|
| width     | The size's width.  |
| height    | The size's height. |



 

## Return Value

A size that contains the specified width and height.

## Requirements



| Requirement | Value |
|-------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 7, Windows Vista with SP2 and Platform Update for Windows Vista \[desktop apps \| UWP apps\]<br/>                          |
| Minimum supported server<br/> | Windows Server 2008 R2, Windows Server 2008 with SP2 and Platform Update for Windows Server 2008 \[desktop apps \| UWP apps\]<br/> |
| Minimum supported phone<br/>  | Windows Phone 8.1 \[Windows Phone Silverlight 8.1 and Windows Runtime apps\]<br/>                                                  |
| Header<br/>                   | <dl> <dt>D2d1helper.h</dt> </dl>                                                  |
| Library<br/>                  | <dl> <dt>D2d1.lib</dt> </dl>                                                      |
| DLL<br/>                      | <dl> <dt>D2d1.dll</dt> </dl>                                                      |



 

 




