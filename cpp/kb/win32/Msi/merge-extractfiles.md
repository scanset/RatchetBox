# Merge.ExtractFiles method

The **ExtractFiles** method of the [**Merge**](merge-object.md) object extracts the embedded .cab file from a module and then writes those files to the destination directory.

## Syntax


```JScript
Merge.ExtractFiles(
  Path
)
```



## Parameters

<dl> <dt>

*Path* 
</dt> <dd>

The fully qualified destination directory.

</dd> </dl>

## Return value

This method does not return a value.

## Remarks

Any files in the destination directory with the same name are overwritten. The path is created if it does not already exist.

**ExtractFiles** always extracts files using short file names for the path. To use long file names for the path, use the [**ExtractFilesEx method**](merge-extractfilesex.md).

### C++

See [**ExtractFiles**](/windows/win32/api/mergemod/nf-mergemod-imsmmerge-extractfiles) function.

## Requirements



| Requirement | Value |
|--------------------|----------------------------------------------------------------------------------------------------------|
| Version<br/> | Mergemod.dll 1.0 or later<br/>                                                                     |
| Header<br/>  | <dl> <dt>Advpub.h (include Mergemod.h)</dt> </dl> |
| DLL<br/>     | <dl> <dt>Mergemod.dll</dt> </dl>                  |



 

 