Before we start executing any queries against a Cassandra, we need to setup a `Client`. A `Client` holds connections to a Cassandra cluster, allowing it to be queried. To connect to an Cassandra cluster, you need to provide the address or host name of at least one node in the cluster and the local data center name.

The simplest way to create a `Client` is like this:

```
const cassandra = require('cassandra-driver');

const client = new cassandra.Client({
  contactPoints: ['127.0.0.1'],
  localDataCenter: 'datacenter1',
  keyspace: 'demo'
});
```{{execute}}
