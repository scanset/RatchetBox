# Committing Databases

Changes made to the installation database are not written to the database until you call [**MsiDatabaseCommit**](/windows/desktop/api/Msiquery/nf-msiquery-msidatabasecommit).

**To ensure changes made in a database are finalized**

1.  Check to see whether a table will be written when you call [**MsiDatabaseCommit**](/windows/desktop/api/Msiquery/nf-msiquery-msidatabasecommit) by calling [**MsiDatabaseIsTablePersistent**](/windows/desktop/api/Msiquery/nf-msiquery-msidatabaseistablepersistenta).
2.  Call the [**MsiDatabaseCommit**](/windows/desktop/api/Msiquery/nf-msiquery-msidatabasecommit) function to finalize changes to the database.

Changes made in a database are accumulated and are not reflected in the actual database until you call [**MsiDatabaseCommit**](/windows/desktop/api/Msiquery/nf-msiquery-msidatabasecommit). Temporary columns or rows are not committed to the database. When a database is closed, all changes made since the last **MsiDatabaseCommit** are automatically rolled back.

 

 


