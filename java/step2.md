Now that we have created an instance of *CqlSession* to connect to Cassandra, we are going to insert a user into that users table.

To execute a CQL query, you create a *Statement* instance and pass it to *session.execute*.The driver provides various implementations of *Statement*. For this example, we are going to use a `SimpleStatement` to insert out user, adding the values separately.

 <summary style="color:teal">Example:</summary>
```
session.execute(
    SimpleStatement.builder( "INSERT INTO users (lastname, age, city, email, firstname) VALUES (?,?,?)")
            .addPositionalValues("Marcus", "Brutus", "marcus@example.com")
            .build());
```

In the `main` method, we call the *setUser* method and with parameters
`setUser(session, "Juilus", "Caesar", "juilus@example.com");``

Fill in the *setUser* such the the user is inserted into the table
<details>
  <summary style="color:teal">Solution</summary>
  ```
  session.execute(
      SimpleStatement.builder( "INSERT INTO users (lastname, firstname, email) VALUES (?,?,?)")
              .addPositionalValues(lastname, firstname, email)
              .build());
  ```              
</details>


We will be using Maven to build and run our application. Make sure you are in the `quickstart` directory in your terminal.
`cd quickstart`{{execute}}

You can then run Maven to launch the program
`mvn compile exec:java -Dexec.mainClass=Main`{{execute}}
`
