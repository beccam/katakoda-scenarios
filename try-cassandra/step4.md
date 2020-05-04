In a production database, inserting columns and column values programmatically is more practical than using cqlsh, but often, testing queries using this SQL-like shell is very convenient.

| lastname             | firstname | email |          
| :---:                 | :---:   | :---:        | 
| Awesome  | Dev |dev@example.com    |  

To insert simple data into the table `demo.users`, use the INSERT command. This example inserts a single record of user data into the table.

`INSERT INTO users (lastname, firstname, email) VALUES ("Awesome", "Dev", "dev@example.com");`{{execute}}
