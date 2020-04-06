# Starting a Single-node Cassandra Cluster in Docker
 
If you have a Docker environment installed on your machine, it's extremely simple to start a Cassandra node. First, let's obtain the Apache Cassandra image:

`docker pull cassandra`{{execute}}

This command pulls the Docker image marked with the tag _latest_ from the [Docker Hub](https://hub.docker.com/_/cassandra/)

Now you can start an instance of Cassandra with default options and a container name of `my-cassandra`:

`docker run -d --name my-cassandra cassandra`{{execute}}

The `-d` option starts the container in the background without printing out the logs.

You used the `--name` option to specify a name for the container, which allows you to reference the container by name when using other Docker commands. 

If you don't provide a name for the container, the Docker runtime will assign a randomly selected name such as `breezy_ensign`. Docker also creates a unique identifier for each container which is returned from the initial `run` command. Either the name or ID may be used to reference a specific container in Docker commands.

In order to access a node from outside Docker for CQL queries, you'll want to make sure the standard CQL port is exposed when the node is created:

`docker start cassandra -p 9042:9042`

There are several other configuration options available for running Cassandra in Docker, which are documented on the Docker Hub page referenced above. 




