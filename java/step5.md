Finally we will delete our user from the table. We will build out the `deleteUser` method with a `DELETE` statement to do so.

<summary style="color:teal">Example:</summary>
```
session.execute(
    SimpleStatement.builder("DELETE FROM users WHERE lastname=?")
            .addPositionalValue("Brutus")
            .build());
```

The `deleteUser` method is called from the `main` method.
`deleteUser(session, "Caesar");`

Fill in *deleteUser* such the the user is inserted into the table.
<details>
  <summary style="color:teal">Solution</summary>
  ```
  session.execute(
      SimpleStatement.builder("DELETE FROM users WHERE lastname=?")
              .addPositionalValue(lastname)
              .build());
  ```              
</details>

Run Maven to launch the program from the `quickstart` directory.
`mvn compile exec:java -Dexec.mainClass=Main`{{execute}}  

</br>

## Awesome! Now you know how to perform basic CRUD operations with the DataStax Driver for Apache Cassandra™
