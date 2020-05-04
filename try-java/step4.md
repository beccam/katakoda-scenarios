Say our user has a wants to change their email. We will execute an UPDATE statement to update the user's email address. As usual, we do this through the `session.execute()` method.

<summary style="color:teal">Example:</summary>
<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">session<span style="font-weight: bold">.</span><span style="color: #008080">execute</span><span style="font-weight: bold">(</span>
    SimpleStatement<span style="font-weight: bold">.</span><span style="color: #008080">builder</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;UPDATE users SET email =?  WHERE lastname =? &quot;</span><span style="font-weight: bold">)</span>
        <span style="font-weight: bold">.</span><span style="color: #008080">addPositionalValues</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;mb@example.com&quot;</span><span style="font-weight: bold">,</span> <span style="color: #bb8844">&quot;Brutus&quot;</span><span style="font-weight: bold">)</span>
        <span style="font-weight: bold">.</span><span style="color: #008080">build</span><span style="font-weight: bold">());</span>
</pre></div>


Run the following query from `jshell`.Notice that we select the row to update by specifying the `lastname`.

```
{
session.execute(
      SimpleStatement.builder("UPDATE users SET email =?  WHERE lastname =? ")
          .addPositionalValues("jc@example.com", "Caesar")
          .build());
}
```{{execute}}

Following the update, we can check to see if the change worked by executing the same SELECT statement as we did in the last step.

```
{
ResultSet rs = session.execute(
        SimpleStatement.builder("SELECT * FROM demo.users WHERE lastname=?")
                .addPositionalValue("Caesar")
                .build());

Row row = rs.one();
System.out.format("%s %s\n", row.getString("firstname"), row.getString("email"));
}
```{{execute}}



</br>

## You're almost there! Coming up, how to DELETE a row from a table
