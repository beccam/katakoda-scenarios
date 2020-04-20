The `execute()` method executes a given query or statement and synchronously waits for the response.

Use method `session.execute()` to execute a CQL statement that will create a `demo` keyspace:

```
session.execute("CREATE KEYSPACE demo WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'}")
```{{execute}}

Add a `users` table, once again using the `session.execute()` method:

```
session.execute("CREATE TABLE demo.users (lastname text PRIMARY KEY, firstname text, email text)")
```{{execute}}

## Once you have finished creating the keyspace and table, we can move on to learning about SimpleStatements.     
