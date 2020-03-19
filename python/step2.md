Before we can start executing any queries against a Cassandra, we need to setup an instance of `Cluster`. As the name suggests, you will typically have one instance of `Cluster` for each Cassandra cluster you want to interact with.

The simplest way to create a Cluster is like this:

```
from cassandra.cluster import Cluster
cluster = Cluster(protocol_version = 3)
```{{execute}}

Instantiating a Cluster does not actually connect us to any nodes. To establish connections and begin executing queries we need a `Session`, which is created by calling `Cluster.connect()`:

```
session = cluster.connect('demo')
```{{execute}}

