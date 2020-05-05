Use the `UPDATE`  command to modify one or more column values to a row in a table.

Say one of our users has changed their email address, now we are going to have to update their information.

`UPDATE users SET email = 'lpolson@example.com'  WHERE lastname = 'Polson';`{{execute}}

UPDATE writes one or more column values to a row in a table.

Use the SELECT command again to see the change, but specify for select for the particular user we just updated.

`SELECT * FROM users WHERE lastname = 'Polson';`{{execute}}
