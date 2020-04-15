Next, will we fill in the `selectUser` function. Using the `execute()` method, we will retrieve our user we just inserted back out of the table. We also print out the `firstname` and `email` of the user.

```
const select = 'SELECT firstname, email FROM users WHERE lastname = ?';
client.execute(select, [ 'Caesar' ], { prepare : true })
  .then(result => console.log('User with firstname %s and email %s', result.rows[0].firtname  result.rows[0].email))
```{{execute}}
