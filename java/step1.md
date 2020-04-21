The DataStax Java Driver for Apache Cassandra allows us to interact with Cassandra in the Java programming language.
This short scenario will walk you through using CRUD operations against your instance through the Java Driver.

`/root/.cassandra/cqlshrc`{{open}}

Open the file `Main.java` file in the editor. Notice that we have we have already imported the necessary packages
for you.

Before we start executing any queries against a Cassandra database, we need to setup an instance of *CqlSession*. This has already been done for you. *CqlSession* is the main entry point of the driver. It holds the known state of the actual Cassandra cluster, and is what you use to execute queries.


<div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">CqlSession session <span style="font-weight: bold">=</span> CqlSession<span style="font-weight: bold">.</span><span style="color: #008080">builder</span><span style="font-weight: bold">().</span><span style="color: #008080">build</span><span style="font-weight: bold">();</span>
</pre></div>



`CqlSession.builder()` provides a fluent API to create an instance programmatically. With it you can explicitly add contact points, a datacenter name, and a keyspace name for your session to connect to.

 <summary style="color:teal">Example:</summary>
 <div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">CqlSession session <span style="font-weight: bold">=</span> CqlSession<span style="font-weight: bold">.</span><span style="color: #008080">builder</span><span style="font-weight: bold">()</span>
    <span style="font-weight: bold">.</span><span style="color: #008080">addContactPoint</span><span style="font-weight: bold">(new</span> InetSocketAddress<span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;1.2.3.4&quot;</span><span style="font-weight: bold">,</span> <span style="color: #009999">9042</span><span style="font-weight: bold">))</span>
    <span style="font-weight: bold">.</span><span style="color: #008080">withKeyspace</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;SomeKS&quot;</span><span style="font-weight: bold">)</span>
    <span style="font-weight: bold">.</span><span style="color: #008080">withLocalDatacenter</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;dc1&quot;</span><span style="font-weight: bold">)</span>
    <span style="font-weight: bold">.</span><span style="color: #008080">build</span><span style="font-weight: bold">()</span>
 </pre></div>






In the main method, augment the `CqlSession.builder()` to add:
* A contact point and InetSocket(`"127.0.0.1", 9042`)
* keyspace (``"demo"``)
* local datacenter name (``"datacenter1"``)

<details>
  <summary style="color:teal">Solution</summary>
  <div style="background: #ffffff; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%">CqlSession session <span style="font-weight: bold">=</span> CqlSession<span style="font-weight: bold">.</span><span style="color: #008080">builder</span><span style="font-weight: bold">()</span>
    <span style="font-weight: bold">.</span><span style="color: #008080">addContactPoint</span><span style="font-weight: bold">(new</span> InetSocketAddress<span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;127.0.0.1&quot;</span><span style="font-weight: bold">,</span> <span style="color: #009999">9042</span><span style="font-weight: bold">))</span>
    <span style="font-weight: bold">.</span><span style="color: #008080">withKeyspace</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;demo&quot;</span><span style="font-weight: bold">)</span>
    <span style="font-weight: bold">.</span><span style="color: #008080">withLocalDatacenter</span><span style="font-weight: bold">(</span><span style="color: #bb8844">&quot;datacenter1&quot;</span><span style="font-weight: bold">)</span>
    <span style="font-weight: bold">.</span><span style="color: #008080">build</span><span style="font-weight: bold">()</span>
</pre></div>
</details>

We will be using Maven to build and run our application. Make sure you are in the quickstart directory in your terminal.
`cd ~/quickstart`{{execute}}

You can then run Maven to launch the program
`mvn compile exec:java -Dexec.mainClass=Main -q`{{execute}}.

Maven will get busy gathering the dependencies specified in `pom.xml`

</br>

## Once you have finished configuring your connection to Cassandra, we can move on to learning about SimpleStatements.                
