Finally, using `session.execute()` we will execute a delete statement to delete our user's row from the table.

```
session.execute("""
    DELETE FROM demo.users WHERE lastname = %s
    """,
    ["Jones"])
```{{execute}}    

Exit the Python interpreter:

`exit()`{{execute}}

## Awesome! Now you know how to perform basic CRUD operations with the DataStax Driver for Apache Cassandra™.
