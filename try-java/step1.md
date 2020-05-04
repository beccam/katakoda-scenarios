Before we start executing any queries against a Cassandra database, we need to setup an instance of *CqlSession*. *CqlSession* is the main entry point of the driver. It holds the known state of the actual Cassandra cluster, and is what you use to execute queries.

`CqlSession.builder()` provides a fluent API to create an instance programmatically. With it you can explicitly add contact points, a datacenter name, and a keyspace name for your session to connect to.

In the main method, we use `CqlSession.builder()` to add:
* A contact point and InetSocket(`"127.0.0.1", 9042`)
* local datacenter name (`"datacenter1"`)

`CqlSession session = CqlSession.builder().addContactPoint(new InetSocketAddress("127.0.0.1", 9042)).withLocalDatacenter("datacenter1").build();`{{execute}}

</br>

## Once you have finished configuring your connection to Cassandra, we can move on to learning about SimpleStatements.                
