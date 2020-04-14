Use the `UPDATE`  command to modify one or more column values to a row in a table.

Say our user has changed their email address, now we are going to have to update their information.

`UPDATE users SET email = "DevAwesome@example.com"  WHERE lastname = "Awesome"`{{execute}}

UPDATE writes one or more column values to a row in a table.

Use the SELECT command again to see the change.

`SELECT * FROM users;`{{execute}}
