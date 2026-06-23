# Determining an Installation Database's Code Page

To determine the code page of a database, call [**MsiDatabaseExport**](/windows/desktop/api/Msiquery/nf-msiquery-msidatabaseexporta) with *hDatabase* set to the handle of the database and *szTableName* set to \_ForceCodepage. This exports a text file with an .idt extension. The first two lines of this file are blank. The third line is the ANSI code page number, followed by a tab, followed by the name \_ForceCodepage. See also [Code Page Handling of Imported and Exported Tables](code-page-handling-of-imported-and-exported-tables.md).

An example of determining the code page by using the [**Export method**](database-export.md) is provided in the Windows Installer SDK as a part of the utility WiLangId.vbs. For more information about using WiLangId.vbs see the topic: [Manage Language and Codepage](manage-language-and-codepage.md).

 

 


