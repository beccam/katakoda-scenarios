# Running `cqlsh` on a Cassandra Node in Docker

To start an instance of `cqlsh`, the simplest way is to use the copy inside your Docker instance by executing a command on the instance:

`docker exec -it my-cassandra cqlsh`{{execute}}

This will give you a `cqlsh` prompt, with which you could execute similar commands to those you learn in other scenarios in this series such as Get to Know CQL or Query Options in CQL.

To create a simple schema in your cluster, you'll use the `CREATE KEYSPACE` and `CREATE TABLE` commands.

`CREATE KEYSPACE my_keyspace WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};`{{execute}}

`CREATE TABLE my_keyspace.user (first_name text, last_name text, title text, PRIMARY KEY (last_name, first_name));`{{execute}}

To get a list of other `cqlsh` commands, use `HELP`:

`HELP`{{execute}}

When you're done using the shell, you can `EXIT`:

`EXIT`{{execute}}