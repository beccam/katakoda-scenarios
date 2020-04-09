Now that we have created an instance of *CqlSession* to connect to Cassandra, we are going to insert a user into that users table:

<pre style="margin: 0; line-height: 125%"><span style="color: #0000aa">CREATE</span> <span style="color: #0000aa">TABLE</span> demo.users (
    lastname <span style="color: #00aaaa">text</span> <span style="color: #0000aa">PRIMARY</span> <span style="color: #0000aa">KEY</span>,
    age <span style="color: #00aaaa">int</span>,
    city <span style="color: #00aaaa">text</span>,
    email <span style="color: #00aaaa">text</span>,
    firstname <span style="color: #00aaaa">text</span>);
</pre>


To execute a CQL query, you create a *Statement* instance and pass it to `session.execute`.The driver provides various implementations of *Statement*. For this example, we are going to use a `SimpleStatement` to insert out user. A SimpleStatement is good for one-off executions of a raw query string. We add the values separately with the with `setPositionalValues()` method.

 <summary style="color:teal">Example:</summary>
 <div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">session<span style="font-weight: bold">.</span><span style="color: #008080">execute</span><span style="font-weight: bold">(</span>
     SimpleStatement<span style="font-weight: bold">.</span><span style="color: #008080">builder</span><span style="font-weight: bold">(</span> <span style="color: #bb8844">&quot;INSERT INTO users (lastname, age, city, email, firstname) VALUES (?,?,?)&quot;</span><span style="font-weight: bold">)</span>
         <span style="font-weight: bold">.</span><span style="color: #008080">addPositionalValues</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;Brutus&quot;</span><span style="font-weight: bold">,</span> <span style="color: #bb8844">&quot;Marcus&quot;</span><span style="font-weight: bold">,</span> <span style="color: #bb8844">&quot;marcus@example.com&quot;</span><span style="font-weight: bold">)</span>
         <span style="font-weight: bold">.</span><span style="color: #008080">build</span><span style="font-weight: bold">());</span>
 </pre></div>




In the *main* method, we call the `setUser`method and with parameters:
<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">setUser<span style="font-weight: bold">(</span>session<span style="font-weight: bold">,</span> <span style="color: #bb8844">&quot;Juilus&quot;</span><span style="font-weight: bold">,</span> <span style="color: #bb8844">&quot;Caesar&quot;</span><span style="font-weight: bold">,</span> <span style="color: #bb8844">&quot;juilus@example.com&quot;</span><span style="font-weight: bold">);</span>
</pre></div>


The `setUser` method takes 3 parameters:
 * `lastname`
 * `firstname`
 * `email`

Fill in the *setUser* method such the the user is inserted into the table
<details>
<summary style="color:teal">Solution</summary>
<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre class="file" data-target="clipboard"  style="margin: 0; line-height: 125%">session<span style="font-weight: bold">.</span><span style="color: #008080">execute</span><span style="font-weight: bold">(</span>
        SimpleStatement<span style="font-weight: bold">.</span><span style="color: #008080">builder</span><span style="font-weight: bold">(</span> <span style="color: #bb8844">&quot;INSERT INTO users (lastname, firstname, email) VALUES (?,?,?)&quot;</span><span style="font-weight: bold">)</span>
            <span style="font-weight: bold">.</span><span style="color: #008080">addPositionalValues</span><span style="font-weight: bold">(</span>lastname<span style="font-weight: bold">,</span> firstname<span style="font-weight: bold">,</span> email<span style="font-weight: bold">)</span>
            <span style="font-weight: bold">.</span><span style="color: #008080">build</span><span style="font-weight: bold">());</span>
</pre></div>


</details>


Make sure you are in the `quickstart` directory in your terminal.
`cd ~/quickstart`{{execute}}

You can then run Maven to launch the program
`mvn compile exec:java -Dexec.mainClass=Main -q`{{execute}}

</br>

## Up next, we will run a query to select our user back out!
