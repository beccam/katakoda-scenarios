Now that we have a created a `Client` , we can use `execute` to insert a user into that users table.

```
const insert = 'INSERT INTO users (lastname,  firstname, email) VALUES (?,?,?)';
const params = [ 'Caesar', 'Julius', 'julius@example.com' ];
client.execute(insert, params, { prepare : true });
```{{execute}}
