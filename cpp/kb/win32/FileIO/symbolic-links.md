# Symbolic links

A symbolic link is a file-system object that points to another file system object. The object being pointed to is called the target.

Symbolic links are transparent to users; the links appear as normal files or directories, and can be acted upon by the user or application in exactly the same manner.

Symbolic links are designed to aid in migration and application compatibility with UNIX operating systems. Microsoft has implemented its symbolic links to function just like UNIX links.

## In this section

For more information, see the following topics:

| Topic | Description |
|-------|-------------|
| [Symbolic Link Effects on File Systems Functions](symbolic-link-effects-on-file-systems-functions.md) | How symbolic links affect standard file functions that use path names to specify one or more files. |
| [Programming Considerations](symbolic-link-programming-considerations.md) | Programming considerations for working with symbolic links. |
| [Creating Symbolic Links](creating-symbolic-links.md) | Create symbolic links that use either an absolute or relative path by using the [CreateSymbolicLink](/windows/win32/api/WinBase/nf-winbase-createsymboliclinka) function. |

## Supported Operating Systems

Symbolic links are available in NTFS starting with Windows Vista.