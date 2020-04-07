Next, will we fill in the `getUser` method. Using the `session.execute()` and an instance of *SimpleStatement*, we will retrieve our user we just inserted back out of the table. This returns a *ResultSet*, which is an iterable of *Row* objects.


So within the `getUser` method, we will include code that:
 * Selects for the user we just inserted
 * Return the first row from the result set
 * Print out the first and last name of the user

<summary style="color:teal">Example:</summary>
<!-- HTML generated using hilite.me --><div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"><span style="color: #999988; font-style: italic">// Select for the user</span>
ResultSet rs <span style="font-weight: bold">=</span> session<span style="font-weight: bold">.</span><span style="color: #008080">execute</span><span style="font-weight: bold">(</span>
        SimpleStatement<span style="font-weight: bold">.</span><span style="color: #008080">builder</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;SELECT * FROM users WHERE lastname=?&quot;</span><span style="font-weight: bold">)</span>
                <span style="font-weight: bold">.</span><span style="color: #008080">addPositionalValue</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;Brutus&quot;</span><span style="font-weight: bold">)</span>
                <span style="font-weight: bold">.</span><span style="color: #008080">build</span><span style="font-weight: bold">());</span>
<span style="color: #999988; font-style: italic">// Return the first element of ResultSet                        </span>
Row row <span style="font-weight: bold">=</span> rs<span style="font-weight: bold">.</span><span style="color: #008080">one</span><span style="font-weight: bold">();</span>                  
<span style="color: #999988; font-style: italic">// Print out the firstname and lastname</span>
System<span style="font-weight: bold">.</span><span style="color: #008080">out</span><span style="font-weight: bold">.</span><span style="color: #008080">format</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;%s %d\n&quot;</span><span style="font-weight: bold">,</span> row<span style="font-weight: bold">.</span><span style="color: #008080">getString</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;firstname&quot;</span><span style="font-weight: bold">),</span> row<span style="font-weight: bold">.</span><span style="color: #008080">getString</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;lastname&quot;</span><span style="font-weight: bold">));</span>
</pre></div>


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
