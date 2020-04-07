Finally we will delete our user from the table. We will build out the `deleteUser` method with a `DELETE` statement to do so.

<summary style="color:teal">Example:</summary>
<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">session<span style="font-weight: bold">.</span><span style="color: #008080">execute</span><span style="font-weight: bold">(</span>
    SimpleStatement<span style="font-weight: bold">.</span><span style="color: #008080">builder</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;DELETE FROM users WHERE lastname=?&quot;</span><span style="font-weight: bold">)</span>
        <span style="font-weight: bold">.</span><span style="color: #008080">addPositionalValue</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;Brutus&quot;</span><span style="font-weight: bold">)</span>
        <span style="font-weight: bold">.</span><span style="color: #008080">build</span><span style="font-weight: bold">());</span>
</pre></div>


The `deleteUser` method is called from the main method:
<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">deleteUser<span style="font-weight: bold">(</span>session<span style="font-weight: bold">,</span> <span style="color: #bb8844">&quot;Caesar&quot;</span><span style="font-weight: bold">);</span>
</pre></div>


Fill in `deleteUser`*` such the the user is inserted into the table.
<details>
  <summary style="color:teal">Solution</summary>
<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">  session<span style="font-weight: bold">.</span><span style="color: #008080">execute</span><span style="font-weight: bold">(</span>
      SimpleStatement<span style="font-weight: bold">.</span><span style="color: #008080">builder</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;DELETE FROM users WHERE lastname=?&quot;</span><span style="font-weight: bold">)</span>
          <span style="font-weight: bold">.</span><span style="color: #008080">addPositionalValue</span><span style="font-weight: bold">(</span>lastname<span style="font-weight: bold">)</span>
          <span style="font-weight: bold">.</span><span style="color: #008080">build</span><span style="font-weight: bold">());</span>
</pre></div>

</details>

Run Maven to launch the program from the `quickstart` directory.
`mvn compile exec:java -Dexec.mainClass=Main`{{execute}}  

</br>

## Awesome! Now you know how to perform basic CRUD operations with the DataStax Driver for Apache Cassandra™
