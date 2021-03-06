Before we start executing any queries against a Cassandra database, we need to setup an instance of `CqlSession`. `CqlSession` is the main entry point of the driver. It holds the known state of the actual Cassandra cluster, and it  is what you use to execute queries.

`CqlSession.builder()` provides a fluent API to create an instance programmatically. With it you can explicitly add contact points, a datacenter name, and a keyspace name for your session to connect to.
<summary style="color:teal">Example:</summary>
<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">CqlSession session <span style="font-weight: bold">=</span> CqlSession<span style="font-weight: bold">.</span><span style="color: #008080">builder</span><span style="font-weight: bold">()</span>
   <span style="font-weight: bold">.</span><span style="color: #008080">addContactPoint</span><span style="font-weight: bold">(new</span> InetSocketAddress<span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;1.2.3.4&quot;</span><span style="font-weight: bold">,</span> <span style="color: #009999">9042</span><span style="font-weight: bold">))</span>
   <span style="font-weight: bold">.</span><span style="color: #008080">withKeyspace</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;SomeKS&quot;</span><span style="font-weight: bold">)</span>
   <span style="font-weight: bold">.</span><span style="color: #008080">withLocalDatacenter</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;dc1&quot;</span><span style="font-weight: bold">)</span>
   <span style="font-weight: bold">.</span><span style="color: #008080">build</span><span style="font-weight: bold">()</span>
</pre></div>

In the main method, we are going to use `CqlSession.builder()` to add:
* A contact point and InetSocket(`"127.0.0.1", 9042`)
* local datacenter name (`"datacenter1"`)

Create the `CqlSession` instance:
`CqlSession session = CqlSession.builder().addContactPoint(new InetSocketAddress("127.0.0.1", 9042)).withLocalDatacenter("datacenter1").build();`{{execute}}

Now that we have created an instance of *CqlSession* to connect to Cassandra, we are going to create a basic `demo` keyspace and `users` table.

We can pass any string command that we would execute normally through CQLSH into `session.execute()` method. We are going to pass in the `CREATE KEYSPACE` command.

`session.execute("CREATE KEYSPACE demo WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'}")`{{execute}}

And also create the `users` table:

`session.execute("CREATE TABLE demo.users (lastname text PRIMARY KEY, firstname text, email text)")`{{execute}}

</br>

## Once you have finished configuring your connection to Cassandra, we can move on to learning about SimpleStatements.             
