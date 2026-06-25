# `tmpfile`

Creates a temporary file. This function is deprecated because a more secure version is available; see [`tmpfile_s`](tmpfile-s.md).

## Syntax

```C
FILE *tmpfile( void );
```

## Return value

If successful, **`tmpfile`** returns a stream pointer. Otherwise, it returns a `NULL` pointer.

## Remarks

The **`tmpfile`** function creates a temporary file and returns a pointer to that stream. The temporary file is created in the root directory. To create a temporary file in a directory other than the root, use [`tmpnam`](tempnam-wtempnam-tmpnam-wtmpnam.md) or [`tempnam`](tempnam-wtempnam-tmpnam-wtmpnam.md) with [`fopen`](fopen-wfopen.md).

If the file can't be opened, **`tmpfile`** returns a `NULL` pointer. This temporary file is automatically deleted when the file is closed, when the program terminates normally, or when `_rmtmp` is called, assuming that the current working directory doesn't change. The temporary file is opened in **w+b** (binary read/write) mode.

Failure can occur if you attempt more than TMP_MAX (see STDIO.H) calls with **`tmpfile`**.

## Requirements

| Routine | Required header |
|---|---|
| **`tmpfile`** | \<stdio.h> |

For more compatibility information, see [Compatibility](../compatibility.md).

## Example

> [!NOTE]
> This example requires administrative privileges to run on Windows Vista.

```C
// crt_tmpfile.c
// compile with: /W3
// This program uses tmpfile to create a
// temporary file, then deletes this file with _rmtmp.
#include <stdio.h>

int main( void )
{
   FILE *stream;
   int  i;

   // Create temporary files.
   for( i = 1; i <= 3; i++ )
   {
      if( (stream = tmpfile()) == NULL ) // C4996
      // Note: tmpfile is deprecated; consider using tmpfile_s instead
         perror( "Could not open new temporary file\n" );
      else
         printf( "Temporary file %d was created\n", i );
   }

   // Remove temporary files.
   printf( "%d temporary files deleted\n", _rmtmp() );
}
```

```Output
Temporary file 1 was created
Temporary file 2 was created
Temporary file 3 was created
3 temporary files deleted
```

## See also

[Stream I/O](../stream-i-o.md)\
[`_rmtmp`](rmtmp.md)\
[`_tempnam`, `_wtempnam`, `tmpnam`, `_wtmpnam`](tempnam-wtempnam-tmpnam-wtmpnam.md)