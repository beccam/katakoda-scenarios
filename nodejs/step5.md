Say our user changes their email. We create and `execute()` an `UPDATE` statement that allows us to do just that. We perform a `SELECT` query as well to see if the change worked.

We specify the row we want to change by the primary key (`lastname`), and include the new value to replace the current one for `email`.

<summary style="color:teal">Example:</summary
<div style="background: #f8f8f8; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"><span style="color: #204a87; font-weight: bold">const</span> <span style="color: #000000">update</span> <span style="color: #ce5c00; font-weight: bold">=</span> <span style="color: #4e9a06">&#39;UPDATE users SET email = ? WHERE lastname = ?&#39;</span><span style="color: #000000; font-weight: bold">;</span>
<span style="color: #000000">client</span><span style="color: #000000; font-weight: bold">.</span><span style="color: #000000">execute</span><span style="color: #000000; font-weight: bold">(</span><span style="color: #000000">update</span><span style="color: #000000; font-weight: bold">,</span> <span style="color: #000000; font-weight: bold">[</span> <span style="color: #4e9a06">&#39;mb@example.com&#39;</span><span style="color: #000000; font-weight: bold">,</span> <span style="color: #4e9a06">&#39;Brutus&#39;</span> <span style="color: #000000; font-weight: bold">],</span> <span style="color: #000000; font-weight: bold">{</span> <span style="color: #000000">prepare</span> <span style="color: #ce5c00; font-weight: bold">:</span> <span style="color: #204a87; font-weight: bold">true</span> <span style="color: #000000; font-weight: bold">}</span> <span style="color: #000000; font-weight: bold">);</span>
</pre></div>




```
const update = 'UPDATE users SET email = ? WHERE lastname = ?';
client.execute(update, [ 'jc@example.com', 'Caesar' ], { prepare : true } );
```{{execute}}

Check to see if your update was successful. Run the select statement from the previous step again:

```
const select = 'SELECT firstname, email FROM users WHERE lastname = ?';
client.execute(select, [ 'Caesar' ], { prepare : true })
  .then(result => console.log('User with firstname %s and email %s', result.rows[0].firstname, result.rows[0].email))
```{{execute}}

Additionally, if you plan to reuse a query within your application (it is generally the case, your parameter value changes but there is only a small number of different queries for a given schema), you can benefit from using prepared statements.

Using prepared statements increases performance compared to plain executes, especially for repeated queries, as the query only needs to be parsed once by the Cassandra node. They allow better type mapping between JavaScript and Cassandra without the need of additional info (hints) from the user, as metadata of the parameters is provided to the driver,

## You're almost there! Coming up, how to DELETE a row from a table
