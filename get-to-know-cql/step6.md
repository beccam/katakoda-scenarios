# The `DELETE` Command

You can delete a column using the `DELETE` command. Here you will delete the `title` column from the row inserted previously:

`DELETE title FROM USER WHERE first_name='Bill' AND last_name='Nguyen';`{{execute}}

You can perform this delete because the `title` column is not part of the primary key. To make sure that the value has been removed, you can query again:

`SELECT * FROM user WHERE first_name='Bill' AND last_name='Nguyen';`{{execute}}

Now you'll clean up after yourself by deleting the entire row. It's the same command, but you don't specify a column name:

`DELETE FROM USER WHERE first_name='Bill' AND last_name='Nguyen';`{{execute}}

To make sure that it's removed, you can query again:

`SELECT * FROM user WHERE first_name='Bill' AND last_name='Nguyen';`{{execute}}

The query should return 0 rows.
