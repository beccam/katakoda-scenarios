Say our user has a birthday. We create the `updateUser` method to update the user's age. Within the empty `updateUser` method, `execute()` and `UPDATE` that allows it to do just that.

```java
session.execute(
        SimpleStatement.builder("UPDATE users SET age =?  WHERE lastname =? ")
                .addPositionalValues(age, lastname)
                .build());
}
```

Call the `updateUser` method, and the `getUser` method created earlier to see the change in the user's age.

```
updateUser(session, 36, "Jones");

getUser(session, "Jones");
```
