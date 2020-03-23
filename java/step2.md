Now that we have a created a Session and  connected to Cassandra, we can use execute() to insert a user into that users table. Fill out the `setUser` method to do just that.

```java
session.execute(
        SimpleStatement.builder( "INSERT INTO users (lastname, age, city, email, firstname) VALUES (?,?,?,?,?)")
                .addPositionalValues(lastname, age, city, email, firstname)
                .build());
    }
```

In the `main` method, call the `setUser` method and include some user inputs.

`setUser(session, "Jones", 35, "Austin", "bob@example.com", "Bob");`
