Say our user has a wants to change their email. We create the `updateUser` method to update the user's email address. Within the `updateUser` method, `execute()` and `UPDATE` that allows it to do just that.

<summary style="color:teal">Example:</summary>
```
session.execute(
        SimpleStatement.builder("UPDATE users SET email =?  WHERE lastname =? ")
                .addPositionalValues("mb@example.com", "Brutus")
                .build());
```

Look at `main` method, where we call the `updateUser` method, selecting the user by their lastname. We then select for the user with the `getUser` to see if our change worked.
```
updateUser(session, "jc@example.com", "Caesar");

getUser(session, "Caesar");
```

Fill in *updateUser* such the the user is inserted into the table
<details>
  <summary style="color:teal">Solution</summary>
  ```
  session.execute(
          SimpleStatement.builder("UPDATE users SET email =?  WHERE lastname =? ")
                  .addPositionalValues(email, lastname)
                  .build());
  ```              
</details>

You can then run Maven to launch the program from the `quickstart` directory.
`mvn compile exec:java -Dexec.mainClass=Main`{{execute}}  
