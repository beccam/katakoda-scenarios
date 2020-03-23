Next, will we fill in the `getUser` method. Using the `execute()`, we will retrieve our user we just inserted back out of the table. This returns a ResultSet, which is an iterable of Row objects. On the next line, we extract the first row (which is the only one in this case); since there is only one user in the database with lastname "Jones".

```java
ResultSet rs = session.execute(
                SimpleStatement.builder("SELECT * FROM users WHERE lastname=?")
                        .addPositionalValue(lastname)
                        .build());
Row row = rs.one();                        
```  
Then add code that will print out the `firstname` and `age` of the user.

`System.out.format("%s %d\n", row.getString("firstname"), row.getInt("age"));`

Finally, we can call the `getUser` method in our `main` method.

`getUser(session, "Jones");`                
