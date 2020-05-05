Finally, using `session.execute()` we will execute a delete statement to remove our user's row from the table.

<summary style="color:teal">Example:</summary>
<div style="background: #eeeedd; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">session.execute(<span style="color: #CD5555">&quot;&quot;&quot;</span>
<span style="color: #CD5555">    DELETE FROM demo.users WHERE lastname = %s</span>
<span style="color: #CD5555">    &quot;&quot;&quot;</span>,
    [<span style="color: #CD5555">&quot;Brutus&quot;</span>])
</pre></div>

Go ahead and delete your user's row:
```
session.execute("""
    DELETE FROM demo.users WHERE lastname = %s
    """,
    ["Caesar"])
```{{execute}}    

Great work! Now we can exit the Python interpreter:

`exit()`{{execute}}

</br>

## Awesome! Now you know how to perform basic CRUD operations with the DataStax Python Driver for Apache Cassandra™.
