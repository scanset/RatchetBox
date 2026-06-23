# Specifying Feature-Component Relationships

Each [Windows Installer Feature](windows-installer-features.md) uses one or more [Windows Installer Components](windows-installer-components.md), and features may share components. The [FeatureComponents table](featurecomponents-table.md) defines the relationship between features and components. See the [Core Tables Group](core-tables-group.md) and [Components and Features](components-and-features.md) in the Windows Installer overview. In this section you add information to the FeatureComponents table of the Notepad sample.

Use your database editor to open MNP2000.msi and enter the following data into the empty FeatureComponents table.

[FeatureComponents Table](featurecomponents-table.md)



| Feature\_ | Component\_ |
|-----------|-------------|
| Baseball  | Baseball    |
| Concert   | Concert     |
| Dance     | Dance       |
| Football  | Football    |
| Help      | Help        |
| January   | January     |
| NewYears  | NewYears    |
| Notepad   | Notepad     |
| Readme    | Notepad     |



 

[Continue](adding-registry-information.md)

 

 


