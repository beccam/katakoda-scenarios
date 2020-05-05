Let's first select the keyspace we want to use: `USE demo;`{{execute}}

In a production database, inserting columns and column values programmatically is more practical than using cqlsh, but often, testing queries using this SQL-like shell is very convenient.

| lastname             | firstname | email |          
| :---:                 | :---:   | :---:        |
| <span style="background-color:#ffcc66">Round</span>   | <span style"background-color:#ffff99">Craig</span>  |<span style="background-color:#00ff99">craig@example.com</span>    |
| <span style="background-color:#ffcc66">Pratico</span>   | <span style="background-color:#ffff99">Cassi</span>   |<span style="background-color:#00ff99">cassi@example.com</span>     |  
| <span style="background-color:#ffcc66">Polson</span>   | <span style="background-color:#ffff99">Lino</span>  |<span style="background-color:#00ff99">lino@example.com</span>    |   

To insert some simple rows of data into the table `demo.users`, use the INSERT command. This example inserts records of user data into the table.

`INSERT INTO users (lastname, firstname, email) VALUES ('Round', 'Round', 'craig@example.com');
`INSERT INTO users (lastname, firstname, email) VALUES ('Pratico ', 'Cassi', 'cassi@example.com');`{{execute}}
`INSERT INTO users (lastname, firstname, email) VALUES ('Polson  ', 'Lino', 'lino@example.com ');`{{execute}}`{{execute}}
