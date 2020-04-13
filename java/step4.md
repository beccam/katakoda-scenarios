Say our user has a wants to change their email. We create the `updateUser` method to update the user's email address. Within the `updateUser` method, `execute()` an `UPDATE` that allows it to do just that.

<summary style="color:teal">Example:</summary>
<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">session<span style="font-weight: bold">.</span><span style="color: #008080">execute</span><span style="font-weight: bold">(</span>
    SimpleStatement<span style="font-weight: bold">.</span><span style="color: #008080">builder</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;UPDATE users SET email =?  WHERE lastname =? &quot;</span><span style="font-weight: bold">)</span>
        <span style="font-weight: bold">.</span><span style="color: #008080">addPositionalValues</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;mb@example.com&quot;</span><span style="font-weight: bold">,</span> <span style="color: #bb8844">&quot;Brutus&quot;</span><span style="font-weight: bold">)</span>
        <span style="font-weight: bold">.</span><span style="color: #008080">build</span><span style="font-weight: bold">());</span>
</pre></div>


Look at the `main` method, where we call the `updateUser` method, selecting the user by their lastname. We then select for the user with the `getUser` to see if our change worked.
<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">updateUser<span style="font-weight: bold">(</span>session<span style="font-weight: bold">,</span> <span style="color: #bb8844">&quot;jc@example.com&quot;</span><span style="font-weight: bold">,</span> <span style="color: #bb8844">&quot;Caesar&quot;</span><span style="font-weight: bold">);</span>

getUser<span style="font-weight: bold">(</span>session<span style="font-weight: bold">,</span> <span style="color: #bb8844">&quot;Caesar&quot;</span><span style="font-weight: bold">);</span>
</pre></div>

Fill in `updateUser` such that the the user is inserted into the table
<details>
  <summary style="color:teal">Solution</summary>
<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre class="file" data-target="clipboard" style="margin: 0; line-height: 125%">  session<span style="font-weight: bold">.</span><span style="color: #008080">execute</span><span style="font-weight: bold">(</span>
      SimpleStatement<span style="font-weight: bold">.</span><span style="color: #008080">builder</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;UPDATE users SET email =?  WHERE lastname =? &quot;</span><span style="font-weight: bold">)</span>
          <span style="font-weight: bold">.</span><span style="color: #008080">addPositionalValues</span><span style="font-weight: bold">(</span>email<span style="font-weight: bold">,</span> lastname<span style="font-weight: bold">)</span>
          <span style="font-weight: bold">.</span><span style="color: #008080">build</span><span style="font-weight: bold">());</span>
</pre></div>      
</details>

You can then run Maven to launch the program from the `quickstart` directory.
`mvn compile exec:java -Dexec.mainClass=Main -q`{{execute}}  

</br>

## You're almost there! Coming up, how to DELETE a row from a table
