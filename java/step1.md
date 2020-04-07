The DataStax Java Driver for Apache Cassandra allows us to interact with Cassandra in the Java programming language.
This short scenario will walk you through using CRUD operations against your instance through the Java Driver.

Open the file `Main.java` file in the editor. Notice that we have we have already imported the necessary packages
for you.

Before we start executing any queries against a Cassandra, we need to setup an instance of *CqlSession*. This has already been done for you. *CqlSession* is the main entry point of the driver. It holds the known state of the actual Cassandra cluster, and is what you use to execute queries.


`CqlSession session = CqlSession.builder().build();`


`CqlSession.builder()` provides a fluent API to create an instance programmatically. With it you can explicitly add contact points, a datacenter name, and a keyspace name for your session to connect to.

 <summary style="color:teal">Example:</summary>
 ```
 CqlSession session = CqlSession.builder()
    .addContactPoint(new InetSocketAddress("1.2.3.4", 9042))
    .withKeyspace("SomeKS")
    .withLocalDatacenter("dc1")
    .build();
```    

In the main method, augment the `CqlSession.builder()` to add:
* A contact point and InetSocket(`"127.0.0.1", 9042`)
* keyspace (``"demo"``)
* local datacenter name (``"datacenter1"``)

<details>
  <summary style="color:teal">Solution</summary>

  <pre style="color:#000000;background:#ffffff;">  CqlSession session <span style="color:#808030; ">=</span> CqlSession<span style="color:#808030; ">.</span>builder<span style="color:#808030; ">(</span><span style="color:#808030; ">)</span>
        <span style="color:#808030; ">.</span>addContactPoint<span style="color:#808030; ">(</span>new InetSocketAddress<span style="color:#808030; ">(</span><span style="color:#800000; ">"</span><span style="color:#0000e6; ">127.0.0.1</span><span style="color:#800000; ">"</span><span style="color:#808030; ">,</span> <span style="color:#008c00; ">9042</span><span style="color:#808030; ">)</span><span style="color:#808030; ">)</span>
        <span style="color:#808030; ">.</span>withKeyspace<span style="color:#808030; ">(</span><span style="color:#800000; ">"</span><span style="color:#0000e6; ">demo</span><span style="color:#800000; ">"</span><span style="color:#808030; ">)</span>
        <span style="color:#808030; ">.</span>withLocalDatacenter<span style="color:#808030; ">(</span><span style="color:#800000; ">"</span><span style="color:#0000e6; ">datacenter1</span><span style="color:#800000; ">"</span><span style="color:#808030; ">)</span>
        <span style="color:#808030; ">.</span>build<span style="color:#808030; ">(</span><span style="color:#808030; ">)</span>

  </pre>

</details>

</br>

We will be using Maven to build and run our application. Make sure you are in the quickstart directory in your terminal.
cd quickstart{{execute}}

You can then run Maven to launch the program mvn compile exec:java -Dexec.mainClass=Main{{execute}}.

Maven will get busy gathering the dependencies specified in `pom.xml`

## Once you have finished configuring your, we can move on to learning about SimpleStatements.                
