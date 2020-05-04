Next, will execute a SELECT statement Using the `execute()` method, we will retrieve our user we just inserted back out of the table. We also print out the `firstname` and `email` of the user.

```
const select = 'SELECT firstname, email FROM users WHERE lastname = ?';
client.execute(select, [ 'Caesar' ], { prepare : true }).then(result => console.log('User with firstname %s and email %s', result.rows[0].firstname, result.rows[0].email))
```{{execute}}

Additionally, if you plan to reuse a query within your application (it is generally the case, your parameter value changes but there is only a small number of different queries for a given schema), you can benefit from using prepared statements.

Using prepared statements increases performance compared to plain executes, especially for repeated queries, as the query only needs to be parsed once by the Cassandra node. They allow better type mapping between JavaScript and Cassandra without the need of additional info (hints) from the user, as metadata of the parameters is provided to the driver, 

## Great! You've just learned how to SELECT and print out a row. Let's move on to learning how to perform an UPDATE.       
