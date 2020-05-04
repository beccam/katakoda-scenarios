Now that we have created an instance of *CqlSession* to connect to Cassandra, we are going to create a basic `demo` keyspace and `users` table.

| Tables   |      Are      |  
|----------|:-------------:|
| col 1 is |  left-aligned |
| col 2 is |    centered   |   
| col 3 is | right-aligned |    

We can pass any string command that we would execute normally through CQLSH into `session.execute()` method. We are going to pass in the "CREATE KEYSPACE" command.

`session.execute("CREATE KEYSPACE demo WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'}")`{{execute}}

And also the `users` table:

`session.execute("CREATE TABLE demo.users (lastname text PRIMARY KEY, firstname text, email text)")`{{execute}}

 </br>

 ## Now that we have a keyspace and table, we can move on to learning about SimpleStatements.  
