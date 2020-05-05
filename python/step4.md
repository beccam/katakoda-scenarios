Now that we have a `Session` and we have created our keyspace and table, we can use `session.execute()` to insert a user into that `users` table. A SimpleStatement is good for one-off executions of a raw query string. We pass the parameters in separately.

<summary style="color:teal">Example:</summary>
<div style="background: #eeeedd; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">session.execute(<span style="color: #CD5555">&quot;&quot;&quot;</span>
<span style="color: #CD5555">    INSERT INTO demo.users</span>
<span style="color: #CD5555">    (lastname,  firstname, email)</span>
<span style="color: #CD5555">     VALUES (%s,%s,%s)</span>
<span style="color: #CD5555">    &quot;&quot;&quot;</span>,
    (<span style="color: #CD5555">&quot;Brutus&quot;</span>, <span style="color: #CD5555">&quot;Marcus&quot;</span>, <span style="color: #CD5555">&quot;marcus@example.com&quot;</span>)
)
</pre></div>

The driver supports two forms of parameter place-holders: positional and named.
Positional parameters are used with a `%s` placeholder. Go ahead and execute the following to insert a user:

```
session.execute("""
    INSERT INTO demo.users
    (lastname,  firstname, email)
     VALUES (%s,%s,%s)
    """,
    ("Caesar", "Julius", "caesar@example.com")
)
```{{execute}}

This will transparently pick a Cassandra node to execute the insert against and handle any retries that are necessary if the operation fails.

</br>

## Up next, we will run a SELECT query to get our user back out!
