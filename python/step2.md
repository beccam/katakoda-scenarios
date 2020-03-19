Connect to the cluster and open a session:

```
from cassandra.cluster import Cluster
cluster = Cluster(protocol_version = 3)
session = cluster.connect('demo')
```{{execute}}
