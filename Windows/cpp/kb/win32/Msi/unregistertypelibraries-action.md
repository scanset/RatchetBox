# UnregisterTypeLibraries Action

The UnregisterTypeLibraries action unregisters type libraries from the system. This action is applied to each file listed in the [TypeLib](typelib-table.md) table that is triggered to be uninstalled.

## Sequence Restrictions

The UnregisterTypeLibraries action must come before the [RemoveFiles](removefiles-action.md) action.

## ActionData Messages



| Field | Description of action data                        |
|-------|---------------------------------------------------|
| \[1\] | [GUID](guid.md) of an unregistered type library. |



 

 

 


