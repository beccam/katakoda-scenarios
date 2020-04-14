Next, let's create a *users* table in your *demo* keyspace.

Run the command `CREATE TABLE demo.users (lastname text PRIMARY KEY, firstname text, email text);`{{execute}}

A table is a database object that stores your data and is defined by a schema. It consists of named columns and data is stored in rows. It also has a **PRIMARY KEY**, which is extremely important in regards to data modeling.
