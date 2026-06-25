# Previewing the User Interface

The installer stores all information about the [user interface](user-interface.md) in the tables of the installation database. To facilitate the design of the UI the installer also provides a preview mode for viewing this information. The following procedure describes how to enable the UI preview mode and display the current appearance of dialog boxes and billboards.

**To view the user interface in the preview mode**

1.  Enable the preview mode by calling the [**MsiEnableUIPreview**](/windows/desktop/api/Msiquery/nf-msiquery-msienableuipreview) function.
2.  Display the particular dialog boxes by calling the [**MsiPreviewDialog**](/windows/desktop/api/Msiquery/nf-msiquery-msipreviewdialoga) function.
3.  Display particular billboards by calling the [**MsiPreviewBillboard**](/windows/desktop/api/Msiquery/nf-msiquery-msipreviewbillboarda) function.

 

 


