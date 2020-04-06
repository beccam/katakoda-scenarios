# The `CREATE TABLE` and `DESCRIBE TABLE` Commands

Now that you have a keyspace, you can create a table in your keyspace. To do this in `cqlsh```, use the following command:

`CREATE TABLE user (first_name text, last_name text, title text, PRIMARY KEY (last_name, first_name));`{{execute}}

This creates a new table called &ldquo;user&rdquo; in your current keyspace with three columns to store first and last names and a title, all of type text. The `text` and `varchar` types are synonymous and are used to store strings. You've specified a primary key for this table consisting of the `first_name` and `last_name` and taken the defaults for other table options. For now, let's think of that combination of names as identifying unique rows in your table. The `title` column is the only one in your table that is not part of the primary key.

You could have also created this table without switching to your keyspace by using the syntax `CREATE TABLE my_keyspace.user`.

You can use `cqlsh` to get a description of a the table you just created using the `DESCRIBE TABLE` command:

`DESCRIBE TABLE user;`{{execute}}

You'll notice that `cqlsh` prints a nicely formatted version of the `CREATE TABLE` command that you just typed in but also includes default values for all of the available table options that you did not specify. 
