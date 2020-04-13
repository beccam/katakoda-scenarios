Next, let's create a table in your *demo* keyspace.

A table is a database object that stores your data and is defined by a schema. It consists of named columns with a specified data type and will store data in rows.
It also has a **PRIMARY KEY**, which is extremely important in regards to data modeling. It determines row uniqueness, and also data distribution in the Cassandra cluster, sorting order for certain columns, and more.

Run the command `CREATE TABLE demo.users (lastname text PRIMARY KEY, firstname text, email text);`{{execute}}.

You can see we preface the table name **users** with the keyspace name. You can also run the command `USE demo`{{execute}} to set your default keyspace so that you don't have to add the prefix everytime.
