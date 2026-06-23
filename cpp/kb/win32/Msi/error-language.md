# Error.Language property

The read-only **Language** property of the [**Error**](error-object.md) object returns the **LANGID** of the current error.

This property is read-only.

## Syntax


```JScript
propVal = Error.Language
```



## Property value

## Remarks

The value of the **Language** property is -1 unless the error is of type msmErrorLanguageUnsupported or msmErrorLanguageFailed. You can determine the type of error by calling the [**Type**](error-type.md) property of the [**Error**](error-object.md) object.

### C++

See [**get\_Language Function (Error Object)**](/windows/win32/api/mergemod/nf-mergemod-imsmerror-get_language).

## Requirements



| Requirement | Value |
|--------------------|-----------------------------------------------------------------------------------------|
| Version<br/> | Mergemod.dll 1.0 or later<br/>                                                    |
| Header<br/>  | <dl> <dt>Mergemod.h</dt> </dl>   |
| DLL<br/>     | <dl> <dt>Mergemod.dll</dt> </dl> |



 
