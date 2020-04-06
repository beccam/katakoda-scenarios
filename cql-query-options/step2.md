# The `SELECT WHERE` Clause

Using the simple schema you've created, you can write a row of data using the `INSERT` command:

`INSERT INTO user (first_name, last_name, title) VALUES ('Bill', 'Nguyen', 'Mr.');`{{execute}}

Then you can read it using the `SELECT` command:

`SELECT * FROM user where last_name = 'Nguyen';`{{execute}}

You'll notice in the last line of output that one row was returned. It turns out to be the row identified by the `last_name` &ldquo;Nguyen&rdquo; and `first_name` &ldquo;Bill&rdquo;. This is the primary key that uniquely identifies this row.

One interesting point about the above query is that it is only specifying the partition key, which makes it a query that could potentially return multiple rows. To illustrate this point, let's add another user with the same `last_name`: 

`INSERT INTO user (first_name, last_name, title)
  VALUES ('Wanda', 'Nguyen', 'Mrs.');`{{execute}}

Then repeat the `SELECT` command from above:

`SELECT * FROM user where last_name = 'Nguyen';`{{execute}}

As you can see, by partitioning users by `last_name`, you've made it possible to load the entire partition in a single query by providing that `last_name`. To access just one single row, you'd need to specify the entire primary key:

`SELECT * FROM user WHERE last_name='Nguyen' AND
  first_name='Bill';`{{execute}}

To summmarize this important detail: the `SELECT`, `INSERT`, `UPDATE`, and `DELETE` commands in CQL all operate in terms of rows. For `INSERT` and `UPDATE` commands, all of the primary key columns must be specified using the `WHERE` clause in order to identify the specific row that is affected. The `SELECT` and `DELETE` commands can operate in terms of one or more rows within a partition, an entire partition, or even multiple partitions by using the `WHERE` and `IN` clauses.

While you do need to provide a value for each primary key column when you add a new row to the table, you are not required to provide values for nonprimary key columns. To illustrate this, let's insert another row with no `title`:

`INSERT INTO user (first_name, last_name)
 VALUES ('Mary', 'Rodriguez');`{{execute}}
               
Since you have not set a value for `title`, the value returned on a query is `null`:
          
`SELECT * FROM user WHERE last_name='Rodriguez';`{{execute}}

Now if you decide later that you would also like to keep track of users' middle initials, you can modify the `user` table using the `ALTER TABLE` command: 

ALTER TABLE user ADD middle_initial text;

View the results using the `DESCRIBE TABLE` command:

`DESCRIBE TABLE user;`{{execute}}

You see that the `middle_initial` column has been added.

Now, let's write some additional rows and populate different columns for each:

`INSERT INTO user (first_name, middle_initial, last_name,
  title)
  VALUES ('Bill', 'S', 'Nguyen', 'Mr.');`{{execute}}
  
`INSERT INTO user (first_name, middle_initial, last_name,
  title)
  VALUES ('Bill', 'R', 'Nguyen', 'Mr.');`{{execute}}
  
Read the results:

`SELECT * FROM user WHERE first_name='Bill' AND
  last_name='Nguyen';`{{execute}}

Was this the result that you expected? If you're following closely, you may have noticed that both of the `INSERT` statements above specify a previous row uniquely identified by the primary key columns `first_name` and `last_name`. As a result, Cassandra has faithfully updated the row you indicated, and your `SELECT` will only return the single row that matches that primary key. The two `INSERT` statements have only served to first set and then overwrite the `middle_initial`.

Because Cassandra uses an append model, there is no fundamental difference between the insert and update operations. If you insert a row that has the same primary key as an existing row, the row is replaced. If you update a row and the primary key does not exist, Cassandra creates it.

For this reason, it is often said that Cassandra supports _upsert_, meaning that inserts and updates are treated the same, with one minor exception having to do with lightweight transactions.
