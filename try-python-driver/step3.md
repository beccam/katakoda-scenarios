The `execute()` method executes a given query or statement and synchronously waits for the response. With, we can create a basic `demo` keyspace and `users` table in our Cassandra database.

<pre style="margin: 0; line-height: 125%"><span style="color: #0000aa">CREATE</span> <span style="color: #0000aa">TABLE</span> demo.users (
    lastname <span style="color: #00aaaa">text</span> <span style="color: #0000aa">PRIMARY</span> <span style="color: #0000aa">KEY</span>,
    firstname <span style="color: #00aaaa">text</span>,
    email <span style="color: #00aaaa">text</span>);
</pre>


Use method `session.execute()` to execute a CQL statement that will create a `demo` keyspace:

```
session.execute("CREATE KEYSPACE demo WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'}")
```{{execute}}

Add a `users` table, once again using the `session.execute()` method:

```
session.execute("CREATE TABLE demo.users (lastname text PRIMARY KEY, firstname text, email text)")
```{{execute}}

</br>

## Once you have finished creating the keyspace and table, we can move on to learning about SimpleStatements.     
