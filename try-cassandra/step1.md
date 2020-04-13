Let's first start learning CQL by creating a keyspace, using the `CREATE KEYSPACE` command.

A keyspace is a way to logically group a collection of database objects together, such as:
 * tables
 * user-defined types
 * user-defined functions
 * and more!

This is similar concept to the database or namespace used in relational databases. Typically you may want to create all of the database objects you use in a specific application to one keyspace.

In addition, the keyspace also controls the replication behavior for all of the data stored in the keyspace. You'll want to create different keyspaces if you want specific data to be replicated differently.

`CREATE KEYSPACE killrvideo WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};`{{execute}}

<p><span  style="color:green">***ProTip:***</span> *You can use the **Tab** key in *cqlsh* to auto-complete or suggest the next part of your command, as you type.*</p>
