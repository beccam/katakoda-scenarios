Say our user changes their email. We create and `execute()` an `UPDATE` statement that allows us to do just that. We perform a `SELECT` query as well to see if the change worked.

We specify the row we want to change by the primary key (`lastname`), and include the new value to replace the current one for `email`.

<summary style="color:teal">Example:</summary
<div style="background: #f8f8f8; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"><span style="color: #204a87; font-weight: bold">const</span> <span style="color: #000000">update</span> <span style="color: #ce5c00; font-weight: bold">=</span> <span style="color: #4e9a06">&#39;UPDATE users SET email = ? WHERE lastname = ?&#39;</span><span style="color: #000000; font-weight: bold">;</span>
<span style="color: #000000">client</span><span style="color: #000000; font-weight: bold">.</span><span style="color: #000000">execute</span><span style="color: #000000; font-weight: bold">(</span><span style="color: #000000">update</span><span style="color: #000000; font-weight: bold">,</span> <span style="color: #000000; font-weight: bold">[</span> <span style="color: #4e9a06">&#39;mb@example.com&#39;</span><span style="color: #000000; font-weight: bold">,</span> <span style="color: #4e9a06">&#39;Brutus&#39;</span> <span style="color: #000000; font-weight: bold">],</span> <span style="color: #000000; font-weight: bold">{</span> <span style="color: #000000">prepare</span> <span style="color: #ce5c00; font-weight: bold">:</span> <span style="color: #204a87; font-weight: bold">true</span> <span style="color: #000000; font-weight: bold">}</span> <span style="color: #000000; font-weight: bold">);</span>
</pre></div>

Go ahead and update our users email address from the REPL:
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

You may have notice the `prepare` flag as part of the `queryOptions` in our statements.

Using prepared statements provides multiple benefits. Prepared statements are parsed and prepared on the Cassandra nodes and are ready for future execution. Also, the driver retrieves information about the parameter types which allows an **accurate mapping between a JavaScript type and a Cassandra type.**

If you plan to reuse a query within your application (it is generally the case, your parameter value changes but there is only a small number of different queries for a given schema), you can benefit from using prepared statements.


## You're almost there! Coming up, how to DELETE a row from a table
