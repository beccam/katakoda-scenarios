Executing a update statement will perform an update on selected rows or column values.

Say the user has had a birthday and we want to update their age. We will use the `session.execute()` method to perform an UPDATE on that row.

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

## You're almost there! Coming up, how to DELETE a row from a table.
