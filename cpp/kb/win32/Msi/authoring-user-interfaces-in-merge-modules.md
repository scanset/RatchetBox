# Authoring User Interfaces in Merge Modules

Merge modules rarely require a user interface. Releasing a merge module that contains both installable components and a user interface ultimately restricts the flexibility of the module user. Combining both components and UI into one module can prevent developers from using their own UI or from providing silent installations. A better alternative is to release two merge modules, one that silently installs the components and a second optional module that contains the UI. The module with the UI should list the component module in its [ModuleDependency table](moduledependency-table.md). This method enables module authors to provide a UI without forcing it on developers.

When UI tables are used in merge modules they can be merged in the same way as any other tables.

 

 


