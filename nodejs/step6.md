Finally we will delete our user from the table. Build out the `deleteUser` method with a `DELETE` statement to do so.

```js
const remove = 'DELETE FROM users WHERE lastname = ?';
const params = [ lastname ];
return client.execute(remove, params)
```

Call the `deleteUser` function from the `example()` function

`await deleteUser('Jones');`

launch with `node quickstart.js`
