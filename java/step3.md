Next, will we fill in the `getUser` method. Using the `session.execute()` and an instance of *SimpleStatement*, we will retrieve our user we just inserted back out of the table. This returns a *ResultSet*, which is an iterable of *Row* objects.


So within the `getUser` method, we will include code that:
 * Selects for the user we just inserted
 * Return the first row from the result set
 * Print out the first and email address of the user

<summary style="color:teal">Example:</summary>
<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"><span style="color: #999988; font-style: italic">// Select for the user</span>
ResultSet rs <span style="font-weight: bold">=</span> session<span style="font-weight: bold">.</span><span style="color: #008080">execute</span><span style="font-weight: bold">(</span>
    SimpleStatement<span style="font-weight: bold">.</span><span style="color: #008080">builder</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;SELECT * FROM users WHERE lastname=?&quot;</span><span style="font-weight: bold">)</span>
        <span style="font-weight: bold">.</span><span style="color: #008080">addPositionalValue</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;Brutus&quot;</span><span style="font-weight: bold">)</span>
        <span style="font-weight: bold">.</span><span style="color: #008080">build</span><span style="font-weight: bold">());</span>
<span style="color: #999988; font-style: italic">// Return the first element of ResultSet                        </span>
Row row <span style="font-weight: bold">=</span> rs<span style="font-weight: bold">.</span><span style="color: #008080">one</span><span style="font-weight: bold">();</span>                  
<span style="color: #999988; font-style: italic">// Print out the firstname and email</span>
System<span style="font-weight: bold">.</span><span style="color: #008080">out</span><span style="font-weight: bold">.</span><span style="color: #008080">format</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;%s %s\n&quot;</span><span style="font-weight: bold">,</span> row<span style="font-weight: bold">.</span><span style="color: #008080">getString</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;firstname&quot;</span><span style="font-weight: bold">),</span> row<span style="font-weight: bold">.</span><span style="color: #008080">getString</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;email&quot;</span><span style="font-weight: bold">));</span>
</pre></div>



Have a look at `main` method, where we call the `getUser` method, selecting the user by their lastname:
<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">getUser<span style="font-weight: bold">(</span>session<span style="font-weight: bold">,</span> <span style="color: #bb8844">&quot;Caesar&quot;</span><span style="font-weight: bold">);</span>
</pre></div>

Go ahead and fill in the `getUser` method that will select our user back out.
<details>
  <summary style="color:teal">Solution</summary>
<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre class="file" data-target="clipboard" style="margin: 0; line-height: 125%">ResultSet rs <span style="font-weight: bold">=</span> session<span style="font-weight: bold">.</span><span style="color: #008080">execute</span><span style="font-weight: bold">(</span>
    SimpleStatement<span style="font-weight: bold">.</span><span style="color: #008080">builder</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;SELECT * FROM users WHERE lastname=?&quot;</span><span style="font-weight: bold">)</span>
        <span style="font-weight: bold">.</span><span style="color: #008080">addPositionalValue</span><span style="font-weight: bold">(</span>lastname<span style="font-weight: bold">)</span>
        <span style="font-weight: bold">.</span><span style="color: #008080">build</span><span style="font-weight: bold">());</span>                    
Row row <span style="font-weight: bold">=</span> rs<span style="font-weight: bold">.</span><span style="color: #008080">one</span><span style="font-weight: bold">();</span>                  
System<span style="font-weight: bold">.</span><span style="color: #008080">out</span><span style="font-weight: bold">.</span><span style="color: #008080">format</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;%s %s\n&quot;</span><span style="font-weight: bold">,</span> row<span style="font-weight: bold">.</span><span style="color: #008080">getString</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;firstname&quot;</span><span style="font-weight: bold">),</span> row<span style="font-weight: bold">.</span><span style="color: #008080">getString</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;email&quot;</span><span style="font-weight: bold">));</span>  
</pre></div>    
</details>

We will be using Maven to build and run our application. Make sure you are in the `quickstart` directory in your terminal.
`cd quickstart`{{execute}}

You can then run Maven to launch the program
`mvn compile exec:java -Dexec.mainClass=Main -q`{{execute}}   

## Great! You've just learned how to SELECT and print out a row. Let's move on to learning how to perform an UPDATE.         
