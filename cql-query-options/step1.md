# Creating a Simple Schema

In this scenario, you'll learn some of the options available on CQL `SELECT`, `INSERT` and `UPDATE` commands.

First, you'll create a simple keyspace, using the `CREATE KEYSPACE` and `CREATE TABLE` commands.

`CREATE KEYSPACE my_keyspace WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};`{{execute}}

`CREATE TABLE my_keyspace.user (first_name text, last_name text, title text, PRIMARY KEY (last_name, first_name));`{{execute}}

Then you can select `my_keyspace` so that you don't have to reference it on future commands:

`USE my_keyspace;`{{execute}}