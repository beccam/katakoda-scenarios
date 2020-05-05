Finally we will delete our user from the table. We will execute with a `DELETE` statement to do so.

<summary style="color:teal">Example:</summary>
<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre  style="margin: 0; line-height: 125%">session<span style="font-weight: bold">.</span><span style="color: #008080">execute</span><span style="font-weight: bold">(</span>
        SimpleStatement<span style="font-weight: bold">.</span><span style="color: #008080">builder</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;DELETE FROM users WHERE lastname=?&quot;</span><span style="font-weight: bold">)</span>
            <span style="font-weight: bold">.</span><span style="color: #008080">addPositionalValue</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;Brutus&quot;</span><span style="font-weight: bold">)</span>
            <span style="font-weight: bold">.</span><span style="color: #008080">build</span><span style="font-weight: bold">());</span>
</pre></div>

Let's do this! Run the following statement in `jshell` to delete our user once and for all. We specify the row that we want to delete by providing the primary key, `lastname`.

```
{
session.execute(
    SimpleStatement.builder("DELETE FROM demo.users WHERE lastname=?")
        .addPositionalValue("Caesar")
        .build());
}
```{{execute}}

</br>

## Awesome! Now you know how to perform basic CRUD operations with the DataStax Driver for Apache Cassandra™.
