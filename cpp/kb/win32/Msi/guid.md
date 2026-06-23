# GUID

The GUID data type is a text string representing a Class identifier (ID). COM must be able to convert the string to a valid Class ID. All GUIDs must be authored in uppercase.

The valid format for a GUID is {XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX} where X is a hex digit (0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F).

Note that utilities such as GUIDGEN can generate GUIDs containing lowercase letters. These must all be changed to uppercase letters before the GUID can be used by the installer as a valid product code, package code, or component code.

 

 


