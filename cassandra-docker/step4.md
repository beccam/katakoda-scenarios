# Monitoring a Cassandra Cluster in Docker

`nodetool` is a command-line program that offers a rich array of ways to look at your cluster, understand its activity, and modify it. `nodetool` lets you get statistics about the cluster, see the ranges each node maintains, and a variety of management tasks such as moving data from one node to another, decommissioning nodes, repairing nodes, and more.

You can use the `nodetool status` command on any of the nodes to see the status of the nodes in the cluster.

`docker exec -it my-cassandra nodetool status`{{execute}}

The `nodetool info` command provides additional details:

`docker exec -it my-cassandra nodetool info`{{execute}}

To see details of which nodes own which portions of the token ring, use `nodetool ring`:

`docker exec -it my-cassandra nodetool ring`{{execute}}

You can get a list of other available commands using `nodetool help`:

`docker exec -it my-cassandra nodetool help`{{execute}}