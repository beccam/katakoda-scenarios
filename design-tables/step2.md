# Creating Keyspaces

First, you need a keyspace to contain the tables. Let's decide to use separate keyspaces for tables containing hotels and reservations. Since this exercise is configured to use a single Cassandra node for simplicity, we'll set the replication factor to 1. In a production cluster with more nodes, this would typically be set to 3 replicas per data center.

`CREATE KEYSPACE hotel WITH replication = {'class': 'SimpleStrategy', 'replication_factor' : 1};`{{execute}}

`CREATE KEYSPACE reservation WITH replication = {'class': 'SimpleStrategy', 'replication_factor' : 1};`{{execute}}

