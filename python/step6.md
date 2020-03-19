Say the user has had a birthday and we want to update their age. We will use the `session.execute()` method to perform and UPDATE on that row.

```
session.execute("""
    UPDATE demo.users SET age =%s WHERE lastname = %s
    """, 
    [26, "Jones"])
```{{execute}}    
    
After, we select the user's information back out to see if the update worked.

```
result = session.execute("""
    SELECT * FROM demo.users WHERE lastname = %s
    """, 
    ["Jones"]).one()
print(result.firstname, result.age)
``` {{execute}}
