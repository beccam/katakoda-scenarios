Now that we have a created a `Client` instance, we can use `execute` to insert a user into that users table. This table has already been created for you.

<pre style="margin: 0; line-height: 125%"><span style="color: #0000aa">CREATE</span> <span style="color: #0000aa">TABLE</span> demo.users (
    lastname <span style="color: #00aaaa">text</span> <span style="color: #0000aa">PRIMARY</span> <span style="color: #0000aa">KEY</span>,
    firstname <span style="color: #00aaaa">text</span>,
    email <span style="color: #00aaaa">text</span>);
</pre>

Instead of hard-coding your parameters in your query, you can use parameter markers in your queries and provide the parameters as an Array. We add the parameters as part of our `queryOptions`.

<summary style="color:teal">Example:</summary>
<div style="background: #f8f8f8; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"><span style="color: #204a87; font-weight: bold">const</span> <span style="color: #000000">insert</span> <span style="color: #ce5c00; font-weight: bold">=</span> <span style="color: #4e9a06">&#39;INSERT INTO users (lastname,  firstname, email) VALUES (?,?,?)&#39;</span><span style="color: #000000; font-weight: bold">;</span>
<span style="color: #204a87; font-weight: bold">const</span> <span style="color: #000000">params</span> <span style="color: #ce5c00; font-weight: bold">=</span> <span style="color: #000000; font-weight: bold">[</span> <span style="color: #4e9a06">&quot;Brutus&quot;</span><span style="color: #000000; font-weight: bold">,</span> <span style="color: #4e9a06">&quot;Marcus&quot;</span><span style="color: #000000; font-weight: bold">,</span> <span style="color: #4e9a06">&quot;marcus@example.com&quot;</span><span style="color: #000000; font-weight: bold">];</span>
<span style="color: #000000">client</span><span style="color: #000000; font-weight: bold">.</span><span style="color: #000000">execute</span><span style="color: #000000; font-weight: bold">(</span><span style="color: #000000">insert</span><span style="color: #000000; font-weight: bold">,</span> <span style="color: #000000">params</span><span style="color: #000000; font-weight: bold">,</span> <span style="color: #000000; font-weight: bold">{</span> <span style="color: #000000">prepare</span> <span style="color: #ce5c00; font-weight: bold">:</span> <span style="color: #204a87; font-weight: bold">true</span> <span style="color: #000000; font-weight: bold">});</span>
</pre></div>

This way you can reuse the query and forget about escaping / stringifying the parameters in your query.

Execute the following in the REPL to insert a user into the table:
```
const insert = 'INSERT INTO users (lastname,  firstname, email) VALUES (?,?,?)';
const params = [ 'Caesar', 'Julius', 'julius@example.com' ];
client.execute(insert, params, { prepare : true });
```{{execute}}

</br>

## Up next, we will run a SELECT query to get our user back out!
