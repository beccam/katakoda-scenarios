Let's first start learning CQL by creating a keyspace, using the `CREATE KEYSPACE` command.

A keyspace is a way to logically group a collection of database objects together, such as tables, user-defined types, user-defined functions, etc. This is similar concept to the database or namespace used in relational databases. Typically you may want to create all of the database objects you use in a specific application to one keyspace.

In addition, the keyspace also controls the replication behavior for all of the data stored in the keyspace. You'll want to create different keyspaces if you want specific data to be replicated differently!

The syntax to create a keyspace is: `CREATE KEYSPACE <keyspace_name> WITH replication = {'class': '<replication_strategy>', ...};`

There are two replication strategies:
   
&nbsp;&nbsp;&nbsp;**SimpleStrategy** - Will replicate data to a certain number of nodes, based on the value of the **replcation_factor** key. This strategy is not datacenter-aware.

&nbsp;&nbsp;&nbsp;**NetworkTopologyStrategy** - Will replicate data to a certain number of nodes in specific datacenters, when provided the name of the datacenters as keys, and the value being the number of copies.

Go ahead and create the keyspace called **killrvideo**, using the **SimpleStrategy** replication strategy and a replication factor of 1.

`CREATE KEYSPACE killrvideo WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};{{execute}}`

Hint: You can use the **Tab** key in *cqlsh* to auto-complete or suggest the next part of your command, as you type.
