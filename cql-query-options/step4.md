# Time to live (TTL)

One very powerful feature that Cassandra provides is the ability to expire data that is no longer needed. This expiration is very flexible and works at the level of individual column values. The time to live (or TTL) is a value that Cassandra stores for each column value to indicate how long to keep the value.

The TTL value defaults to `null`, meaning that data that is written will not expire. Let's show this by adding the `ttl()` function to a `SELECT` command in `cqlsh` to see the TTL value for Mary's title:

`SELECT first_name, last_name, ttl(title)
  FROM user WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}

Now let's set the TTL on the last name column to an hour (3,600 seconds) by adding the `USING TTL` option to your `UPDATE` command:

`UPDATE user USING TTL 3600 SET middle_initial =
  'Z' WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}
  
To see the TTL value, let's retrieve the row:  
  
`SELECT first_name, middle_initial,
  last_name, TTL(middle_initial)
  FROM user WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}

As you can see, the clock is already counting down your TTL, reflecting the several seconds it took to type the second command. If you run this command again in an hour, Mary's `middle_initial` will be shown as `null`. You can also set TTL on `INSERTS` using the same `USING TTL` option, in which case the entire row will expire. You can try inserting a row using TTL of 60 seconds:

`INSERT INTO user (first_name, last_name)
  VALUES ('Jeff', 'Carpenter') USING TTL 60;`{{execute}}
  
Check that the row is initially there:

`SELECT * FROM user WHERE first_name='Jeff' AND
  last_name='Carpenter';`{{execute}}

After you wait a minute, the row is no longer there:

`SELECT * FROM user WHERE first_name='Jeff' AND
  last_name='Carpenter';`{{execute}}

Remember that TTL is stored on a per-column level for nonprimary key columns. There is currently no mechanism for setting TTL at a row level directly after the initial insert; you would instead need to reinsert the row, taking advantage of Cassandra's upsert behavior. As with the timestamp, there is no way to obtain or set the TTL value of a _primary key_ column, and the TTL can only be set for a column when you provide a value for the column.

If you want to set TTL across an entire row, you must provide a value for every nonprimary key column in your `INSERT` or `UPDATE` command.