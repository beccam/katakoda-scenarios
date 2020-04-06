# The `DESCRIBE KEYSPACE` and `USE KEYSPACE` Commands

Have a look at your keyspace using the `DESCRIBE KEYSPACE` command:

`DESCRIBE KEYSPACE my_keyspace;`{{execute}}

You see that the table has been created with the `SimpleStrategy`, a `replication_factor` of one, and durable writes. Notice that your keyspace is described in much the same syntax that you used to create it, with one additional option that you did not specify: `durable_writes = true`.

After you have created your own keyspace, you can switch to it in the shell by typing:

`USE my_keyspace;`{{execute}}

Notice that the prompt has changed to indicate that you're using the keyspace.

You may have wondered why we directed you to to name your keyspace in &ldquo;snake case&rdquo; (`my_keyspace`) as opposed to &ldquo;camel case&rdquo; (`MyKeyspace`), which is familiar to developers using Java and other languages.

As it turns out, Cassandra naturally handles keyspace, table, and column names as lowercase. When you enter names in mixed case, Cassandra stores them as all lowercase.

This behavior can be overridden by enclosing your names in double quotes (e.g., `CREATE KEYSPACE "MyKeyspace"`). However, it tends to be a lot simpler to use snake case than to go against the grain.
