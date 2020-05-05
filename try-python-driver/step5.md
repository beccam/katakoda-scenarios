Using `session.execute()`, we will retrieve our user we just inserted back out of the table. Since there is only one user in the database with lastname "Jones", we can use the `one()` method to return a single row of the results. Then we will print out the `firstname` and `email` of our user.

<summary style="color:teal">Example:</summary>
<div style="background: #eeeedd; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">result = session.execute(<span style="color: #CD5555">&quot;&quot;&quot;</span>
<span style="color: #CD5555">    SELECT * FROM demo.users WHERE lastname = %s</span>
<span style="color: #CD5555">    &quot;&quot;&quot;</span>,
    [<span style="color: #CD5555">&quot;Brutus&quot;</span>]).one()
<span style="color: #8B008B; font-weight: bold">print</span>(result.firstname, result.email)
</pre></div>

Go ahead and execute this code in the interpreter that will select our user back out:

```
result = session.execute("""
    SELECT * FROM demo.users WHERE lastname = %s
    """,
    ["Caesar"]).one()
print(result.firstname, result.email)
``` {{execute}}

---
<p><span  style="color:teal">***Pro-Tip:***</span>
By default, each row in the result set will be a namedtuple. Each row will have a matching attribute for each column defined in the schema, such as firstname, email, and so on. You can also treat them as normal tuples by unpacking them or accessing fields by position. The following three examples are equivalent:

```
rows = session.execute('SELECT lastname, firstname, email FROM demo.users')
for row in rows:
    print row.lastname, row.firstname, row.email

rows = session.execute('SELECT lastname, firstname, email FROM demo.users')
for (lastname, firstname, email) in rows:
    print lastname, firstname, email

rows = session.execute('SELECT lastname, firstname, email FROM demo.users')
for row in rows:
    print row[0], row[1], row[2]   
```     
</p>
---

</br>

## Great! You've just learned how to SELECT and print out a row. Let's move on to learning how to perform an UPDATE.
