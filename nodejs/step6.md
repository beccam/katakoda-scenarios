Finally we will delete our user from the table with a `DELETE` statement.

```
const remove = 'DELETE FROM users WHERE lastname = ?';
client.execute(remove, [ 'Caesar'], { prepare: true });
```{{execute}}
