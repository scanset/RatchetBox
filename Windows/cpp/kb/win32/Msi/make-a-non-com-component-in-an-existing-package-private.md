# Make a non-COM Component in an Existing Package Private

An administrator can force a client application to always use the same copy of a non-COM server in an existing package—without affecting other applications—by specifying an [isolated components](isolated-components.md) relationship between the server and client. This installs a private copy of the server component to a location used exclusively by the client application. The administrator needs to use transforms or a package authoring tool to do the following:

-   Put the server DLL and the .exe client in separate components.
-   Enter a record in the [IsolatedComponent table](isolatedcomponent-table.md) with the client component in the Component\_Shared column and the client application in the Component\_Application column. Include the [IsolateComponents action](isolatecomponents-action.md) in the sequence tables.
-   Set the **msidbComponentAttributesSharedDllRefCount** bit in the [Component table](component-table.md) record for Component\_Shared. The installer requires this global refcount on the shared location to protect the shared files and registration in cases where there is sharing with other installation technologies.

 

 


