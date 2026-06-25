# How to Add Shortcuts to the Start Menu

To add an item to the **Programs** submenu, follow these steps.

## Instructions

### Step 1:

Create a [shell link](./links.md) by using the [**IShellLink**](/windows/desktop/api/Shobjidl_core/nn-shobjidl_core-ishelllinka) interface.

### Step 2:

Obtain the location of the Programs folder by using the [**SHGetKnownFolderPath**](/windows/desktop/api/shlobj_core/nf-shlobj_core-shgetknownfolderpath) function, passing [**FOLDERID\_Programs**](knownfolderid.md).

### Step 3:

Add the Shell link to the Programs folder. You can also create a folder in the Programs folder and add the link to that folder.

 

 