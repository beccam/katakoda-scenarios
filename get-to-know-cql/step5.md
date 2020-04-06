# The `SELECT` Command

Now that you have written some data, you can read it back using the `SELECT` command:

`SELECT * FROM user WHERE first_name='Bill' AND last_name='Nguyen';`{{execute}}

In this command, you requested to return rows matching the primary key including all columns. For this query, you specified both of the columns referenced by the primary key. What happens when you only specify one of the values? Let's find out.

`SELECT * FROM user where last_name = 'Nguyen';`{{execute}}

Ok, that works. How about this one?

`SELECT * FROM user where first_name = 'Bill';`{{execute}}

As you can see, you get an error message. This behavior might not seem intuitive at first, but it has to do with the composition of the primary key you used for this table. This is your first clue that there might be something a bit different about accessing data in Cassandra as compared to what you might be used to in SQL. 

Usage of `ALLOW FILTERING` is not recommended, as it has the potential to result in very expensive queries. If you find yourself needing such a query, you will want to revisit your data model to make sure you have designed tables that support your queries.

Many new Cassandra users, especially those who are coming from a relational background, will be inclined to use the the `SELECT COUNT` command as a way to ensure data has been written. For example, you could use the following command to verify your write to the `user` table:

`SELECT COUNT (*) FROM user;`{{execute}}

Note that when you execute this command, `cqlsh` gives you the correct count of rows, but also gives you a warning. This is because you've asked Cassandra to perform a full table scan. In a multi-node cluster with potentially large amounts of data, this `COUNT` could be a very expensive operation. This is one of several ways in which Cassandra tries to warn you or constrain your ability to perform operations that will perform poorly at scale in a distributed architecture.
