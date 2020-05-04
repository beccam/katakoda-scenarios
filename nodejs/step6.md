Finally we will delete our user from the table with a `DELETE` statement.

```
const remove = 'DELETE FROM users WHERE lastname = ?';
client.execute(remove, [ 'Caesar'], { prepare: true });
```{{execute}}

## Awesome! Now you know how to perform basic CRUD operations with the DataStax Node.js Driver for Apache Cassandra™.
