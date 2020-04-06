The DataStax Java Driver for Apache Cassandra allows us to interact with Cassandra in the Java programming language.
This short scenario will walk you through using CRUD operations against your instance through the Java Driver.

Open the file `Main.java` file in the editor. Notice that we have we have already imported the necessary element classes
for you.

Before we start executing any queries against a Cassandra, we need to setup an instance of *CqlSession*. This has already been done for you. *CqlSession* is the main entry point of the driver. It holds the known state of the actual Cassandra cluster, and is what you use to execute queries.


`CqlSession session = CqlSession.builder().build();`


*CqlSessio.builder()* provides a fluent API to create an instance programmatically. With it you can explicitly add contact points, a datacenter name, and a keyspace name for your session to connect to.

 <summary style="color:teal">Example:</summary>
 ```
 CqlSession session = CqlSession.builder()
    .addContactPoint(new InetSocketAddress("1.2.3.4", 9042))
    .withKeyspace("SomeKS")
    .withLocalDatacenter("dc1")
    .build();
```    

In the Main class, augment the `CqlSession.builder()` to add
* A contact point and InetSocket(`"127.0.0.1", 9042`)
* keyspace (``"demo"``)
* local datacenter name (``"datacenter1"``)

<details>
  <summary style="color:teal">Solution</summary>
  ```
  CqlSession session = CqlSession.builder()
                .addContactPoint(new InetSocketAddress("127.0.0.1", 9042))
                .withKeyspace("demo")
                .withLocalDatacenter("datacenter1")
                .build())
  ```              
</details>

</br>

We will be using Maven to build and run our application. Make sure you are in the quickstart directory in your terminal.
cd quickstart{{execute}}

You can then run Maven to launch the program mvn compile exec:java -Dexec.mainClass=Main{{execute}}.

Maven will get busy gathering the dependencies specified in `pom.xml`

## Once you have finished configuring your, we can move on to learning about SimpleStatements.                
