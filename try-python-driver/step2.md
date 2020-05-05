Before we can start executing any queries against a Cassandra, we need to setup an instance of `Cluster`. It is the main class to use when interacting with a Cassandra cluster. As the name suggests, you will typically have one instance of `Cluster` for each Cassandra cluster you want to interact with.

If we want to customize the driver’s behavior in some way, this is the place to do it. For example, here we are adding an initial set of contact points:

<summary style="color:teal">Example:</summary>
<div style="background: #eeeedd; overflow:auto;width:auto;border:solid gray;border-width:.1em .1em .1em .8em;padding:.2em .6em;"><pre style="margin: 0; line-height: 125%"><span style="color: #8B008B; font-weight: bold">from</span> <span style="color: #008b45; text-decoration: underline">cassandra.cluster</span> <span style="color: #8B008B; font-weight: bold">import</span> Cluster
cluster = Cluster([<span style="color: #CD5555">&#39;192.168.1.1&#39;</span>, <span style="color: #CD5555">&#39;192.168.1.2&#39;</span>])
session = cluster.connect()
</pre></div>

Run the following in the interpreter to create a `Cluster`. As you can see, we have configured `Cluster` to support native protocol version=3 (Cassandra 2.1–>3.x+). By default, we connect to `localhost`
```
from cassandra.cluster import Cluster
cluster = Cluster(protocol_version = 3)
```{{execute}}

Instantiating a Cluster does not actually connect us to any nodes. To establish connections and begin executing queries we need a `Session`, which is created by calling `Cluster.connect()`:

```
session = cluster.connect()
```{{execute}}

</br>

## Now that you have connected to Cassandra, let's create a keyspace and table.
