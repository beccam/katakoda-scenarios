Now that we have created an instance of *CqlSession* to connect to Cassandra, we are going to insert a user into that users table:

<pre style='color:#000000;background:#ffffff;'>CREATE <span style='color:#2a00ff; '>TABLE</span> <span style='color:#2a00ff; '>demo.users</span> (
    lastname <span style='color:#2a00ff; '>text</span> <span style='color:#2a00ff; '>PRIMARY</span> <span style='color:#2a00ff; '>KEY</span>,
    age <span style='color:#2a00ff; '>int</span>,
    city <span style='color:#2a00ff; '>text</span>,
    email <span style='color:#2a00ff; '>text</span>,
    firstname <span style='color:#2a00ff; '>text</span>);
</pre>

To execute a CQL query, you create a *Statement* instance and pass it to `session.execute`.The driver provides various implementations of *Statement*. For this example, we are going to use a `SimpleStatement` to insert out user, adding the values separately.

 <summary style="color:teal">Example:</summary>
```
<pre style='color:#000000;background:#f1f0f0;'>session<span style='color:#806030; '>.</span>execute<span style='color:#806030; '>(</span>
    SimpleStatement<span style='color:#806030; '>.</span>builder<span style='color:#806030; '>(</span> <span style='color:#800000; '>"</span><span style='color:#e60000; '>INSERT INTO users (lastname, age, city, email, firstname) VALUES (?,?,?)</span><span style='color:#800000; '>"</span><span style='color:#806030; '>)</span>
            <span style='color:#806030; '>.</span>addPositionalValues<span style='color:#806030; '>(</span><span style='color:#800000; '>"</span><span style='color:#e60000; '>Brutus</span><span style='color:#800000; '>"</span><span style='color:#806030; '>,</span> <span style='color:#800000; '>"</span><span style='color:#e60000; '>Marcus</span><span style='color:#800000; '>"</span><span style='color:#806030; '>,</span> <span style='color:#800000; '>"</span><span style='color:#e60000; '>marcus@example.com</span><span style='color:#800000; '>"</span><span style='color:#806030; '>)</span>
            <span style='color:#806030; '>.</span>build<span style='color:#806030; '>(</span><span style='color:#806030; '>)</span><span style='color:#806030; '>)</span><span style='color:#806030; '>;</span>
</pre>
```

In the *main* method, we call the `setUser`method and with parameters"
`setUser(session, "Juilus", "Caesar", "juilus@example.com");`

The `setUser` method takes 3 parameters: `lastname`, `firstname` and `email`.

Fill in the *setUser* method such the the user is inserted into the table
<details>
  <summary style="color:teal">Solution</summary>
  ```
  session.execute(
      SimpleStatement.builder( "INSERT INTO users (lastname, firstname, email) VALUES (?,?,?)")
              .addPositionalValues(lastname, firstname, email)
              .build());
  ```              
</details>


Make sure you are in the `quickstart` directory in your terminal.
`cd quickstart`{{execute}}

You can then run Maven to launch the program
`mvn compile exec:java -Dexec.mainClass=Main`{{execute}}

## Up next, we will run a query to select our user back out!
