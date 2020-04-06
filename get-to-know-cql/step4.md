# The `INSERT` Command

Now that you have a keyspace and a table, you can write some data to the database and read it back out again. It's OK at this point not to know quite what's going on. You'll come to understand Cassandra's data model in other scenarios. For now, you have a keyspace (database), which has a table, which holds columns, the atomic unit of data storage.

To write rows, you use the `INSERT` command:

`INSERT INTO user (first_name, last_name, title) VALUES ('Bill', 'Nguyen', 'Mr.');`{{execute}}

Here you have created a new row with two columns for the key `Bill`, to store a set of related values. The column names are `first_name` and `last_name`.
