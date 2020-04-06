# Using `writetime` on `SELECT`, `INSERT`, and `UPDATE`

Each time you write data into Cassandra, a timestamp, in microseconds, is generated for each column value that is inserted or updated. Internally, Cassandra uses these timestamps for resolving any conflicting changes that are made to the same value, in what is frequently referred to as a _last write wins_ approach.

Let's view the timestamps that were generated for previous writes by adding the `writetime()` function to the `SELECT` command for the `title` column, plus a couple of other values for context:

`SELECT first_name, last_name, title, writetime(title)
  FROM user;`{{execute}}

As you might expect, there is no timestamp for a column that has not been set. You might expect that if you ask for the timestamp on `first_name` or `last_name`, you'd get a similar result to the values obtained for the `title` column. However, it turns out you're not allowed to ask for the timestamp on primary key columns:

`SELECT writetime(first_name) FROM user;`{{execute}}

Cassandra also allows you to specify a timestamp you want to use when performing writes using the CQL `INSERT` or `UPDATE` commands. Let's use the optional `USING TIMESTAMP` option to manually set a timestamp (note that the timestamp must be later than the one from your `SELECT` command, or this `UPDATE` will be ignored):

`UPDATE user USING TIMESTAMP 1567886623298243
  SET middle_initial = 'Q' WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}
  
To confirm the results:

`SELECT first_name, middle_initial, last_name,
  writetime(middle_initial) FROM user WHERE first_name = 'Mary' AND
  last_name = 'Rodriguez';`{{execute}}

This statement has the effect of adding the `middle_initial` column and setting the timestamp to the value you provided.

Setting the timestamp is not required for writes. This functionality is typically used for writes in which there is a concern that some of the writes may cause fresh data to be overwritten with stale data. This is advanced behavior and should be used with caution.