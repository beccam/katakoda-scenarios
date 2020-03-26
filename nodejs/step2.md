# **Creating a Client**

Before we start executing any queries against a Cassandra, we need to setup a `Client`. This has already been done for you. A `Client` holds connections to a Cassandra cluster, allowing it to be queried. To connect to an Cassandra cluster, you need to provide the address or host name of at least one node in the cluster and the local data center name. 

The simplest way to create a `Client` is like this:


<pre style="color:#000000;background:#ffffff;"><span style="color:#7f0055; font-weight:bold; ">const</span> client = <span style="color:#7f0055; font-weight:bold; ">new</span> cassandra.Client({
  contactPoints: [<span style="color:#2a00ff; ">'</span><span style="color:#2a00ff; ">127.0.0.1</span><span style="color:#2a00ff; ">'</span>],
  localDataCenter: <span style="color:#2a00ff; ">'</span><span style="color:#2a00ff; ">datacenter1</span><span style="color:#2a00ff; ">'</span>,
  keyspace: <span style="color:#2a00ff; ">'</span><span style="color:#2a00ff; ">demo</span><span style="color:#2a00ff; ">'</span>
});
</pre>


