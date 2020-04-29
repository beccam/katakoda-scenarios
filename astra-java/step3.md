Our Java code is very simple, it inserts once row of user data into the users table:
```
session.execute(
  SimpleStatement.builder( "INSERT INTO users (last_name, first_name, email, address) VALUES (?,?,?,?)")
  .addPositionalValues("Smith", "Alex","asmith@gmail.com","123 Main st.")
  .build());
```

After that, it prints out the `first_name` and `email` of the user we just entered:
```
ResultSet rs = session.execute(
   SimpleStatement.builder("SELECT * FROM users WHERE last_name=?")
   .addPositionalValue("Smith")
   .build());

Row row = rs.one();
System.out.format("%s %s\n", row.getString("first_name"), row.getString("email"));
```

We will be using Maven to build and run our application. Make sure you are in the `cloud-java` directory in your terminal.
`cd ~/cloud-java`{{execute}}

You can then run Maven to launch the program
`mvn compile exec:java -Dexec.mainClass=Main -q`{{execute}}   

You should get the output:
`Alex asmith@gmail.com`

## *Great! You've just learned how connect to your Astra instance and run queries against it!!*   



