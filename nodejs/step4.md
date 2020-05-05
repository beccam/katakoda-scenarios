Next, will execute a SELECT statement using the `execute()` method. We will retrieve our user we just inserted back out of the database. We also print out the `firstname` and `email` of the user.

<summary style="color:teal">Example:</summary>
<div style="background: #f8f8f8; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"><span style="color: #204a87; font-weight: bold">const</span> <span style="color: #000000">select</span> <span style="color: #ce5c00; font-weight: bold">=</span> <span style="color: #4e9a06">&#39;SELECT firstname, email FROM users WHERE lastname = ?&#39;</span><span style="color: #000000; font-weight: bold">;</span>
<span style="color: #000000">client</span><span style="color: #000000; font-weight: bold">.</span><span style="color: #000000">execute</span><span style="color: #000000; font-weight: bold">(</span><span style="color: #000000">select</span><span style="color: #000000; font-weight: bold">,</span> <span style="color: #000000; font-weight: bold">[</span> <span style="color: #4e9a06">&#39;Brutus&#39;</span> <span style="color: #000000; font-weight: bold">],</span> <span style="color: #000000; font-weight: bold">{</span> <span style="color: #000000">prepare</span> <span style="color: #ce5c00; font-weight: bold">:</span> <span style="color: #204a87; font-weight: bold">true</span> <span style="color: #000000; font-weight: bold">})</span>
  <span style="color: #000000; font-weight: bold">.</span><span style="color: #000000">then</span><span style="color: #000000; font-weight: bold">(</span><span style="color: #000000">result</span> <span style="color: #ce5c00; font-weight: bold">=&gt;</span> <span style="color: #000000">console</span><span style="color: #000000; font-weight: bold">.</span><span style="color: #000000">log</span><span style="color: #000000; font-weight: bold">(</span><span style="color: #4e9a06">&#39;User with firstname %s and email %s&#39;</span><span style="color: #000000; font-weight: bold">,</span> <span style="color: #000000">result</span><span style="color: #000000; font-weight: bold">.</span><span style="color: #000000">rows</span><span style="color: #000000; font-weight: bold">[</span><span style="color: #0000cf; font-weight: bold">0</span><span style="color: #000000; font-weight: bold">].</span><span style="color: #000000">firstname</span><span style="color: #000000; font-weight: bold">,</span> <span style="color: #000000">result</span><span style="color: #000000; font-weight: bold">.</span><span style="color: #000000">rows</span><span style="color: #000000; font-weight: bold">[</span><span style="color: #0000cf; font-weight: bold">0</span><span style="color: #000000; font-weight: bold">].</span><span style="color: #000000">email</span><span style="color: #000000; font-weight: bold">))</span>
</pre></div>

Execute the following in the REPL to select our user back out and print their `firstname` and `email`
```
const select = 'SELECT firstname, email FROM users WHERE lastname = ?';
client.execute(select, [ 'Caesar' ], { prepare : true }).then(result => console.log('User with firstname %s and email %s', result.rows[0].firstname, result.rows[0].email))
```{{execute}}

Execution methods in the driver return a `Promise`, you can await on the promise to be fulfilled using async functions (ie. `then()` or `await`)

The promise is fulfilled when the data is retrieved.

## Great! You've just learned how to SELECT and print out a row. Let's move on to learning how to perform an UPDATE.       
