# UnpublishComponents Action

The UnpublishComponents action manages the unadvertisement of components listed in the PublishComponent table. These are components that may be faulted in by other products. This action removes information about published components from the [PublishComponent table](publishcomponent-table.md) for which the corresponding feature is currently selected to be uninstalled.

## Sequence Restrictions

There are no sequence restrictions.

## ActionData Messages



| Field | Description of action data                                   |
|-------|--------------------------------------------------------------|
| \[1\] | GUID representing the component ID of an advertised feature. |
| \[2\] | Qualifier of the component ID.                               |



 
