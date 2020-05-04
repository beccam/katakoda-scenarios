Now that we have created an instance of *CqlSession* to connect to Cassandra, we are going to create a basic `demo` keyspace and `users` table.

<pre style="margin: 0; line-height: 125%"><span style="color: #0000aa">CREATE</span> <span style="color: #0000aa">TABLE</span> demo.users (
    lastname <span style="color: #00aaaa">text</span> <span style="color: #0000aa">PRIMARY</span> <span style="color: #0000aa">KEY</span>,
    firstname <span style="color: #00aaaa">text</span>,
    email <span style="color: #00aaaa">text</span>);
</pre>

We can pass any string command that we would execute normally through CQLSH into `session.execute()` method. We are going to pass in the "CREATE KEYSPACE" command.

`session.execute("CREATE KEYSPACE demo WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'}")`{{execute}}

And also the `users` table:

`session.execute("CREATE TABLE demo.users (lastname text PRIMARY KEY, firstname text, email text)")`{{execute}}
