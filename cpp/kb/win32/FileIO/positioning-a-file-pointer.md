# Positioning a File Pointer

When an application calls [**CreateFile**](/windows/desktop/api/FileAPI/nf-fileapi-createfilea) to open a file for the first time, Windows places the [file pointer](file-pointers.md) at the beginning of the file. As bytes are read from or written to the file, Windows advances the file pointer the number of bytes read or written.

An application can position the file pointer to a specified offset by calling [**SetFilePointer**](/windows/desktop/api/FileAPI/nf-fileapi-setfilepointer).

The [**SetFilePointer**](/windows/desktop/api/FileAPI/nf-fileapi-setfilepointer) function can also be used to query the current file pointer position by specifying a move method of **FILE\_CURRENT** and a distance of zero.

 

 


