Finally we will delete our user from the table. Build out the `deleteUser` method with a `DELETE` statement to do so.

```
session.execute(
    SimpleStatement.builder("DELETE FROM users WHERE lastname=?")
            .addPositionalValue(lastname)
            .build());
```

Call the `deleteUser` method from the `main` method.

`deleteUser(session, "Jones");`

