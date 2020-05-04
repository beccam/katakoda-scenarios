Say our user changes their email. We create and `execute()` an `UPDATE` statement that allows us to do just that. We perform a `SELECT` query as well to see that the changed worked.

```
const update = 'UPDATE users SET email = ? WHERE lastname = ?';
client.execute(update, [ jc@example.com, 'Caesar' ], { prepare : true } );
```{{execute}}

```
const select = 'SELECT firstname, email FROM users WHERE lastname = ?';
client.execute(select, [ 'Caesar' ], { prepare : true })
  .then(result => console.log('User with firstname %s and email %s', result.rows[0].firtname, result.rows[0].email))
```{{execute}}

## You're almost there! Coming up, how to DELETE a row from a table
