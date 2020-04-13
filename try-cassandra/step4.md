In a production database, inserting columns and column values programmatically is more practical than using cqlsh, but often, testing queries using this SQL-like shell is very convenient.

To insert simple data into the table `demo.users`, use the INSERT command. This example inserts a single record into the table.

`INSERT INTO users (lastname, email, firstname) VALUES (?,?,?)`{{execute}}
