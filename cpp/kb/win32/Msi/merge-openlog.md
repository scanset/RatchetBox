# Merge.OpenLog method

The **OpenLog** method of the [**Merge**](merge-object.md) object opens a log file that receives progress and error messages. If the log file already exists, the installer appends new messages. If the log file does not exist, the installer creates a log file.

## Syntax


```JScript
Merge.OpenLog(
  Filename
)
```



## Parameters

<dl> <dt>

*Filename* 
</dt> <dd>

Fully qualified file name pointing to a file to open or create.

</dd> </dl>

## Return value

This method does not return a value.

## Remarks

Clients may send their own messages to this log file through the [**Log**](merge-log.md) method.

### C++

See [**OpenLog**](/windows/win32/api/mergemod/nf-mergemod-imsmmerge-openlog) function.

## Requirements



| Requirement | Value |
|--------------------|-----------------------------------------------------------------------------------------|
| Version<br/> | Mergemod.dll 1.0 or later<br/>                                                    |
| Header<br/>  | <dl> <dt>Mergemod.h</dt> </dl>   |
| DLL<br/>     | <dl> <dt>Mergemod.dll</dt> </dl> |



 

 