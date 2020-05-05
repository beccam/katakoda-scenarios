Executing a update statement will perform an update on selected rows or column values.

Say the user has changed their email address and we want to update it in the table. We will use the `session.execute()` method to perform an UPDATE on that row.

<summary style="color:teal">Example:</summary>
<div style="background: #eeeedd; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">session.execute(<span style="color: #CD5555">&quot;&quot;&quot;</span>
<span style="color: #CD5555">    UPDATE demo.users SET email =%s WHERE lastname = %s</span>
<span style="color: #CD5555">    &quot;&quot;&quot;</span>,
    [<span style="color: #CD5555">&quot;mb@example.com&quot;</span>, <span style="color: #CD5555">&quot;Brutus&quot;</span>])
</pre></div>

Follow along, and update the email address for your user:
```
session.execute("""
    UPDATE demo.users SET email =%s WHERE lastname = %s
    """,
    ["jc@example.com", "Caesar"])
```{{execute}}    

After, we select the user's information back out to see if the update worked.

```
result = session.execute("""
    SELECT * FROM demo.users WHERE lastname = %s
    """,
    ["Caesar"]).one()
print(result.firstname, result.email)
``` {{execute}}

</br>

## You're almost there! Coming up, how to DELETE a row from a table.
