Finally, using `session.execute()` we will delete our user's row from the table.

```
session.execute("""
    DELETE FROM demo.users WHERE lastname = %s
    """, 
    ["Jones"])
```{{execute}}    
    


