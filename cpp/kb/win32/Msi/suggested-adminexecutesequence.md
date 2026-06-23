# Suggested AdminExecuteSequence



| Action                                                | Condition | Sequence |
|-------------------------------------------------------|-----------|----------|
| [CostInitialize](costinitialize-action.md)           |           | 800      |
| [FileCost](filecost-action.md)                       |           | 900      |
| [CostFinalize](costfinalize-action.md)               |           | 1000     |
| [InstallValidate](installvalidate-action.md)         |           | 1400     |
| [InstallInitialize](installinitialize-action.md)     |           | 1500     |
| [InstallAdminPackage](installadminpackage-action.md) |           | 3900     |
| [InstallFiles](installfiles-action.md)               |           | 4000     |
| [InstallFinalize](installfinalize-action.md)         |           | 6600     |



 

 

 


