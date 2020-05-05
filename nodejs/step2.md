Before we start executing any queries against a Cassandra cluster, we need to setup a `Client`. A `Client` holds connections to a Cassandra cluster. It also allows you to configure different important aspects of the way connections and queries are handled.

To connect to an Apache Cassandra cluster, you need to provide
 * The address or host name of at least one node in the cluster
 * The local data center (DC) name.
 * Optionally, the name of the keyspace you want to connect to

The driver will discover all the nodes in the cluster and connect to all the nodes in the local data center.

Typically, you should create only a single `Client` instance for a given Cassandra cluster and use it across your application.

Execute the following in the REPL:

```
const cassandra = require('cassandra-driver');

const client = new cassandra.Client({
  contactPoints: ['127.0.0.1'],
  localDataCenter: 'datacenter1',
  keyspace: 'demo'
});

client.connect()
  .then(() => console.log('Connected!'));
```{{execute}}

Even though calling `connect()`` is not required (the execute method internally calls to connect), it is recommended you call to `connect()` on application startup. That way you can ensure that you start your application once your are connected to your cluster.

## Once you have finished configuring your connection to Cassandra, we can move on to inserting a row into a table.    
