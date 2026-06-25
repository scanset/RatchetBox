# RegisterFonts Action

The RegisterFonts action registers installed fonts with the system. This action maps the font name in the FontTitle column of the [Font table](font-table.md) to the path of the font file installed.

## Sequence Restrictions

The [InstallFiles](installfiles-action.md) action must be called before calling the RegisterFonts action.

## ActionData Messages



| Field | Description of action data |
|-------|----------------------------|
| \[1\] | Font file.                 |



 

## Remarks

The RegisterFonts action is executed if the file specified in the File\_ column of the [Font table](font-table.md) belongs to a component being installed.

 

 


