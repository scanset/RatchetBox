# GetFiles.ModuleFiles property

**ModuleFiles** property of the [**GetFiles**](getfiles-object.md) object returns all the primary keys of the [File table](file-table.md) for the currently open module. The primary keys are returned as a collection of strings. The module must be opened by a call to the [**OpenModule**](merge-openmodule.md) method of the [Merge object](merge-object.md) before calling **ModuleFiles**.

This property is read-only.

## Syntax


```JScript
propVal = GetFiles.ModuleFiles
```



## Property value

## Remarks

Note that order of the files listed in the collection may not be in the same sequence as listed in the File table.

If the module has no File table, or contains no files in the particular language, ModuleFiles returns an empty collection of strings.

### C++

See [**get\_ModuleFiles**](/windows/win32/api/mergemod/nf-mergemod-imsmgetfiles-get_modulefiles) function.

## Requirements



| Requirement | Value |
|--------------------|-----------------------------------------------------------------------------------------|
| Version<br/> | Mergemod.dll 1.0 or later<br/>                                                    |
| Header<br/>  | <dl> <dt>Mergemod.h</dt> </dl>   |
| DLL<br/>     | <dl> <dt>Mergemod.dll</dt> </dl> |



 

 