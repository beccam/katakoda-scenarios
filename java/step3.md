Next, will we fill in the `getUser` method. Using the `session.execute()` and an instance of SimpleStatement, we will retrieve our user we just inserted back out of the table. This returns a *ResultSet*, which is an iterable of *Row* objects.


So within the `getUser` method, we will include code that:
 * Selects for the user we just inserted just a moment ago
 * Return the first row from the result set (Returns one element)
 * Print out the first and last name of the user

<summary style="color:teal">Example:</summary>
```
// Select for the user
ResultSet rs = session.execute(
                SimpleStatement.builder("SELECT * FROM users WHERE lastname=?")
                        .addPositionalValue("Brutus")
                        .build());
// Return the first element of ResultSet                        
Row row = rs.one();                  
// Print out the firstname and lastname
`System.out.format("%s %d\n", row.getString("firstname"), row.getString("lastname"));`      
```  

Have a look at `main` method, where we call the `getUser` method, selecting the user by their lastname:
`getUser(session, "Caesar");`

Go ahead and fill in the `getUser` method that will select our user back out.
<details>
  <summary style="color:teal">Solution</summary>
  ```
  ResultSet rs = session.execute(
                  SimpleStatement.builder("SELECT * FROM users WHERE lastname=?")
                          .addPositionalValue(lastname)
                          .build());                    
  Row row = rs.one();                  
  `System.out.format("%s %d\n", row.getString("firstname"), row.getString("lastname"));`   
  ```              
</details>

We will be using Maven to build and run our application. Make sure you are in the `quickstart` directory in your terminal.
`cd quickstart`{{execute}}

You can then run Maven to launch the program
`mvn compile exec:java -Dexec.mainClass=Main`{{execute}}            
