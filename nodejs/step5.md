Say our user changes their email. We create and `execute()` an `UPDATE` statement that allows us to do just that. We perform a `SELECT` query as well to see that the changed worked.

```
const update = 'UPDATE users SET age = ? WHERE lastname = ?';
client.execute(update, [ 36, 'Jones' ], { prepare : true } );
```{{execute}}
