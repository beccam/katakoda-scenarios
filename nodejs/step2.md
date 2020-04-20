Before we start executing any queries against a Cassandra, we need to setup a `Client`. A `Client` holds connections to a Cassandra cluster, allowing it to be queried.

To connect to an Apache Cassandra cluster, you need to provide the address or host name of at least one node in the cluster and the local data center (DC) name. The driver will discover all the nodes in the cluster and connect to all the nodes in the local data center.

Typically, you should create only a single Client instance for a given Cassandra cluster and use it across your application.

```
const cassandra = require('cassandra-driver');

const client = new cassandra.Client({
  contactPoints: ['127.0.0.1'],
  localDataCenter: 'datacenter1',
  keyspace: 'demo'
});
```{{execute}}

At this point, the driver will be connected to all the nodes in the local data center and discovered the rest of the nodes in your cluster.
