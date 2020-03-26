Now that we have a created a `Client` , we can use `execute` to insert a user into that users table. Fill out the `insertUser` function to do just that.

```js
const insert = 'INSERT INTO users (lastname, age, city, email, firstname) VALUES (?,?,?,?,?)';
const params = [ lastname, age, city, email, firstname ];
return client.execute(insert, params, { prepare : true });
```{{copy}}

In the `async function example`, call the `insertUser` function and include some user inputs.

`await insertUser('Jones', 35, 'Austin', 'bob@example.com', 'Bob');`{{copy}}

launch with `node quickstart.js`{{execute}}


`
