Now that we have created an instance of `CqlSession` to connect to Cassandra, we are going to insert a user into that `users` table that we created in the previous step.

<pre style="margin: 0; line-height: 125%"><span style="color: #0000aa">CREATE</span> <span style="color: #0000aa">TABLE</span> demo.users (
    lastname <span style="color: #00aaaa">text</span> <span style="color: #0000aa">PRIMARY</span> <span style="color: #0000aa">KEY</span>,
    firstname <span style="color: #00aaaa">text</span>,
    email <span style="color: #00aaaa">text</span>);
</pre>

To execute a CQL query, you create a *Statement* instance and pass it to `session.execute`.The driver provides various implementations of *Statement*. For this example, we are going to use a `SimpleStatement` to insert out user. A SimpleStatement is good for one-off executions of a raw query string. We add the values separately with the with `setPositionalValues()` method.

 <summary style="color:teal">Example:</summary>
 <div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">session<span style="font-weight: bold">.</span><span style="color: #008080">execute</span><span style="font-weight: bold">(</span>
     SimpleStatement<span style="font-weight: bold">.</span><span style="color: #008080">builder</span><span style="font-weight: bold">(</span> <span style="color: #bb8844">&quot;INSERT INTO users (lastname, firstname, email) VALUES (?,?,?)&quot;</span><span style="font-weight: bold">)</span>
         <span style="font-weight: bold">.</span><span style="color: #008080">addPositionalValues</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;Brutus&quot;</span><span style="font-weight: bold">,</span> <span style="color: #bb8844">&quot;Marcus&quot;</span><span style="font-weight: bold">,</span> <span style="color: #bb8844">&quot;marcus@example.com&quot;</span><span style="font-weight: bold">)</span>
         <span style="font-weight: bold">.</span><span style="color: #008080">build</span><span style="font-weight: bold">());</span>
 </pre></div>

Run the following code in `jshell` to insert one user into the table.

```
{
session.execute(
  SimpleStatement.builder("INSERT INTO demo.users (lastname,  firstname, email)VALUES (?,?,?)")
          .addPositionalValues("Caesar", "Julius", "caesar@example.com")
          .build());
}
```{{execute}}

The we add the 3 parameters as Positional Values:
 * `lastname` &#8594; `"Caesar"`
 * `firstname` &#8594; `"Julius"`
 * `email` &#8594; `"caesar@example.com"`


</br>

## Up next, we will run a SELECT query to get our user back out!
