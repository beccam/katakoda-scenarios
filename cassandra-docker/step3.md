# Creating a Multinode Cassandra Cluster in Docker

One exercise you may find interesting is to launch multiple nodes in Docker to create a small cluster.

Let's build on the single node cluster you've started already and add two more nodes:

`docker run --name my-cassandra2 -d -e CASSANDRA_SEEDS=my-cassandra cassandra`{{execute}}

`docker run --name my-cassandra3 -d -e CASSANDRA_SEEDS=my-cassandra cassandra`{{execute}}

With these commands you've started two additional nodes on a single Docker instance, providing the first node as a seed node. Once these new nodes start up they will connect with the original and take over responsibility for a portion of the cluster's data. The schema you've created are automatically replicated to these new nodes.

If you want to create a cluster spanning containers on multiple Docker instances, you'll need to do a bit more networking such as making sure that ports Cassandra uses for internode communication are accessible. It's also possible to configure the image to mount an external directory for Cassandra to store its data files. You can find these details in the documentation for the Cassandra Docker image.




