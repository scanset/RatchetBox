# How to Register Icon Overlay Handlers

In addition to normal Component Object Model (COM) registration, the following steps must be completed in order to register icon overlay handlers.

## Instructions

### Step 1: Create a subkey named for the handler under this key

```
HKEY_LOCAL_MACHINE
   Software
      Microsoft
         Windows
            CurrentVersion
               Explorer
                  ShellIconOverlayIdentifiers
```

### Step 2: Set the default value of the subkey to the string form of the object's class identifier (CLSID)GUID

The following example illustrates how to register an icon overlay handler named MyOverlay.

```
HKEY_LOCAL_MACHINE
   Software
      Microsoft
         Windows
            CurrentVersion
               Explorer
                  ShellIconOverlayIdentifiers
                     MyOverlay
                        (Default) = {MyOverlay CLSID GUID}
```

 

 


