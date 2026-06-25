# MrmResourceIndexerHandle structure

Represents a handle to a resource indexer object. Most MRM functions require an indexer handle, which can 
be obtained via one of the **MrmCreateResourceIndexer...** functions.

## Syntax


```C++
typedef struct _MrmResourceIndexerHandle {
  PVOID handle;
} MrmResourceIndexerHandle, *PMrmResourceIndexerHandle;
```



## Members

<dl> <dt>

**handle**
</dt> <dd>

Type: **PVOID**

</dd> <dd>

An opaque handle to a resource indexer object. Do not use this value directly.

</dd> </dl>

## Requirements



| Requirement | Value |
|-------------------------------------|-------------------------------------------------------------------------------------------------|
| Minimum supported client<br/> | Windows 10, version 1803 \[desktop apps only\]<br/>                                       |
| Minimum supported server<br/> | Windows Server \[desktop apps only\]<br/>                                                 |
| Header<br/>                   | <dl> <dt>MrmResourceIndexer.h</dt> </dl> |



## See also

<dl> <dt>

[**MrmCreateResourceIndexer**](mrmcreateresourceindexer.md)
</dt></dl>

<dl> <dt>

[**MrmCreateResourceIndexerFromPreviousPriData**](mrmcreateresourceindexerfrompreviouspridata-.md)
</dt></dl>

<dl> <dt>

[**MrmCreateResourceIndexerFromPreviousPriFile**](mrmcreateresourceindexerfrompreviousprifile.md)
</dt></dl>

<dl> <dt>

[**MrmCreateResourceIndexerFromPreviousSchemaData**](mrmcreateresourceindexerfrompreviousschemadata.md)
</dt></dl>

<dl> <dt>

[**MrmCreateResourceIndexerFromPreviousSchemaFile**](mrmcreateresourceindexerfrompreviousschemafile.md)
</dt></dl>

<dl> <dt>

[**MrmDestroyIndexerAndMessages**](mrmresourceindexermessage.md)
</dt></dl>

<dl> <dt>

[Package resource indexing (PRI) APIs and custom build systems](/windows/uwp/app-resources/pri-apis-custom-build-systems)
</dt></dl>

**Header:** MrmResourceIndexer.h
