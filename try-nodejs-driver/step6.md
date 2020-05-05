Finally we will delete our user from the table. We will execute with a `DELETE` statement to do so.

<summary style="color:teal">Example:</summary>
<div style="background: #f8f8f8; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"><span style="color: #204a87; font-weight: bold">const</span> <span style="color: #000000">remove</span> <span style="color: #ce5c00; font-weight: bold">=</span> <span style="color: #4e9a06">&#39;DELETE FROM users WHERE lastname = ?&#39;</span><span style="color: #000000; font-weight: bold">;</span>
<span style="color: #000000">client</span><span style="color: #000000; font-weight: bold">.</span><span style="color: #000000">execute</span><span style="color: #000000; font-weight: bold">(</span><span style="color: #000000">remove</span><span style="color: #000000; font-weight: bold">,</span> <span style="color: #000000; font-weight: bold">[</span><span style="color: #4e9a06">&#39;Brutus&#39;</span><span style="color: #000000; font-weight: bold">],</span> <span style="color: #000000; font-weight: bold">{</span> <span style="color: #000000">prepare</span><span style="color: #ce5c00; font-weight: bold">:</span> <span style="color: #204a87; font-weight: bold">true</span> <span style="color: #000000; font-weight: bold">});</span>
</pre></div>

Let's do this! Run the following statement in the REPL to delete our user once and for all. We specify the row that we want to delete by providing the primary key, `lastname`.
```
const remove = 'DELETE FROM users WHERE lastname = ?';
client.execute(remove, [ 'Caesar'], { prepare: true });
```{{execute}}

</br>

## Awesome! Now you know how to perform basic CRUD operations with the DataStax Node.js Driver for Apache Cassandra™.
