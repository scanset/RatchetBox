# Merge.Errors property

The read-only **Errors** property of the [**Merge**](merge-object.md) object returns a collection of [**Error**](error-object.md) objects that is the current set of errors.

This property is read-only.

## Syntax


```JScript
propVal = Merge.Errors
```



## Property value

## Remarks

The retrieval is non-destructive. Multiple instances of the error collection may be retrieved by repeatedly calling this method.

### C++

See [**get\_Errors**](/windows/win32/api/mergemod/nf-mergemod-imsmmerge-get_errors) Function.

## Requirements



| Requirement | Value |
|--------------------|-----------------------------------------------------------------------------------------|
| Version<br/> | Mergemod.dll 1.0 or later<br/>                                                    |
| Header<br/>  | <dl> <dt>Mergemod.h</dt> </dl>   |
| DLL<br/>     | <dl> <dt>Mergemod.dll</dt> </dl> |



 

 