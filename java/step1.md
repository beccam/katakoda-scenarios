The DataStax Java Driver for Apache Cassandra allows us to interact with Cassandra in the Java programming language.
This short scenario will walk you through using CRUD operations against your instance through the Java Driver.

<br>

Open the file `Main.java` file in the editor. Notice that we have we have already imported the nescessery element classes
for you.

<br>

Before we start executing any queries against a Cassandra, we need to setup an instance of `CqlSession`. This has already been done for you. `CqlSession` is the main entry point of the driver. It holds the known state of the actual Cassandra cluster, and is what you use to execute queries.


`CqlSession session = CqlSession.builder().build();`


`CqlSession#builder()` provides a fluent API to create an instance programmatically. With it you can explicitly add contact points, a datacenter name, and a keyspace name for your session to connect to.

 <summary style="color:teal">Example:</summary>
 CqlSession session = CqlSession.builder()
    .addContactPoint(new InetSocketAddress("1.2.3.4", 9042))
    .addKeyspace("KillrVideo")
    .withLocalDatacenter("dc1")
    .build();

In the Main class, augement the CqlSession.builder() to add
* A contact point and InetSocket(`"127.0.0.1", 9042`)
* keyspace ("demo")
* local datacenter name ("datacenter1")
