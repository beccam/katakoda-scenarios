Now that we have a created a `Client` , we can use `execute` to insert a user into that users table.

Instead of hard-coding your parameters in your query, you can use parameter markers in your queries and provide the parameters as an Array.

```
const insert = 'INSERT INTO users (lastname,  firstname, email) VALUES (?,?,?)';
const params = [ 'Caesar', 'Julius', 'julius@example.com' ];
client.execute(insert, params, { prepare : true });
```{{execute}}

This way you can reuse the query and forget about escaping / stringifying the parameters in your query.

Execution methods in the driver return a Promise (`then()`), you can await on the promise to be fulfilled using async functions.

The promise is fulfilled when the data is inserted.
