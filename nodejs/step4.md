Now that we have a `Session` and we have created our keyspace and table, we can use `session.execute()` to insert a user into that `users` table:

```
session.execute("""
    INSERT INTO demo.users
    (lastname, age, city, email, firstname)
     VALUES (%s,%s,%s,%s,%s)
    """,
    ("Jones", 35, "Austin", "bob@example.com", "Bob")
)
```{{execute}}
