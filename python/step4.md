Now that we have a `Session` and we have created our keyspace and table, we can use `session.execute()` to insert a user into that `users` table. A SimpleStatement is good for one-off executions of a raw query string. We pass the parameters in separately.

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

## Up next, we will run a SELECT query to get our user back out!
