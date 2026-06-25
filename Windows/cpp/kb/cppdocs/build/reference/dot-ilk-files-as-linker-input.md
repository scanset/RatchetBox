# `.ilk` files as linker input

The linker creates and uses a *`.ilk`* database file for incremental link information.

## Remarks

When linking incrementally, LINK updates the *`.ilk`* status file that it created during the first incremental link. This file has the same base name as the target EXE or DLL file, and it has the extension *`.ilk`*. During subsequent incremental links, LINK updates the *`.ilk`* file. If the *`.ilk`* file is missing, LINK performs a full link and creates a new *`.ilk`* file. If the *`.ilk`* file is unusable, LINK performs a non-incremental link. For more information about incremental linking, see the [`/INCREMENTAL` (Link incrementally)](incremental-link-incrementally.md) linker option. For information about how to specify the name and location of the file, see [`/ILK` (Name incremental database file)](./ilk-name-incremental-database-file.md).

## See also

[LINK input files](link-input-files.md)\
[MSVC linker options](linker-options.md)