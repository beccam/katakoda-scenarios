Use the `UPDATE`  command to modify one or more column values to a row in a table.

Now we are going to update our user's email address:

UPDATE users SET email = "jc@example.com"  WHERE lastname = "jc@example.com"

UPDATE writes one or more column values to a row in a table.

Assign new values to the row's columns in the SET clause.

The WHERE clause specifies the row or rows to be updated. To specify a row, the WHERE clause must provide a value for each column of the row's primary key.
