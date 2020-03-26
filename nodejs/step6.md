Finally we will delete our user from the table. Build out the `deleteUser` method with a `DELETE` statement to do so.

```js
// TO DO: execute a prepared that deletes one user from the table
const remove = 'DELETE FROM users WHERE lastname = ?';
const params = [ lastname ];
return client.execute(remove, params, { prepare: true })
```

Call the `deleteUser` method from the `main` method.

`deleteUser(session, "Jones");`


