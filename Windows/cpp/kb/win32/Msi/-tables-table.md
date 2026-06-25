# \_Tables Table

The \_Tables table is a read-only system table that lists all the tables in the database. Query this table to find out if a table exists.

The \_Tables Table has the following column.



| Column | Type             | Key | Nullable |
|--------|------------------|-----|----------|
| Name   | [Text](text.md) | Y   | N        |



 

## Column

<dl> <dt>

<span id="Name"></span><span id="name"></span><span id="NAME"></span>Name
</dt> <dd>

Name of one of the tables.

</dd> </dl>

## Remarks

Because the \_Tables table is a system table that cannot be modified through SQL queries, you cannot obtain the primary keys with the [**MsiDatabaseGetPrimaryKeys**](/windows/desktop/api/Msiquery/nf-msiquery-msidatabasegetprimarykeysa) function or the [**PrimaryKeys property**](database-primarykeys.md).

 

 


