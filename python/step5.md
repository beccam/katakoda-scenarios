Using `session.execute()`, we will retrieve our user we just inserted back out of the table. Since there is only one user in the database with lastname "Jones", we can use the `one()` method to return a single row of the results. Then we will print out the name and age of our user.

```
result = session.execute("""
    SELECT * FROM demo.users WHERE lastname = %s
    """,
    ["Caesar"]).one()
print(result.firstname, result.email)
``` {{execute}}

---
<p><span  style="color:teal">***Pro-Tip:***</span> *
By default, each row in the result set will be a namedtuple. Each row will have a matching attribute for each column defined in the schema, such as firstname, email, and so on. You can also treat them as normal tuples by unpacking them or accessing fields by position. The following three examples are equivalent:

rows = session.execute('SELECT lastname, firstname, email FROM demo.users')
for row in rows:
    print row.lastname, row.firstname, row.email

rows = session.execute('SELECT lastname, firstname, email FROM demo.users')
for (lastname, firstname, email) in rows:
    print lastname, firstname, email
Copy
rows = session.execute('SELECT lastname, firstname, email FROM demo.users')
for row in rows:
    print row[0], row[1], row[2]    
</p>
---

## Great! You've just learned how to SELECT and print out a row. Let's move on to learning how to perform an UPDATE.
