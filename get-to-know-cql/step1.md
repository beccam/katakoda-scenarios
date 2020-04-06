# The `CREATE KEYSPACE` Command 

A Cassandra keyspace is sort of like a relational database. It defines one or more tables. When you start `cqlsh` without specifying a keyspace, the prompt will look like this: `cqlsh>`, with no keyspace specified.

Now you'll create your own keyspace so you have something to write data to. In creating your keyspace, there are some required options. To walk through these options, you could use the command `HELP CREATE_KEYSPACE`, but instead you can use the helpful command-completion features of `cqlsh`. Type the following and then press the Tab key:

`CREATE KEYSPACE my_keyspace WITH`{{execute}}

When you press the Tab key, `cqlsh` begins completing the syntax of your command so that it reads:

`CREATE KEYSPACE my_keyspace WITH replication = {'class': '`

This is informing you that in order to specify a keyspace, you also need to specify a replication strategy. Tab again to see what options you have:

`CREATE KEYSPACE my_keyspace WITH replication = {'class': '
NetworkTopologyStrategy    OldNetworkTopologyStrategy SimpleStrategy`

Now `cqlsh` is giving you three strategies to choose from. For now, choose the `SimpleStrategy` by typing the name, and indicate you're done with a closing quote and Tab again:

`CREATE KEYSPACE my_keyspace WITH replication = {'class': 'SimpleStrategy', 'replication_factor':`

The next option you're presented with is a replication factor. For the simple strategy, this indicates how many nodes the data in this keyspace will be written to. For a production deployment, you'll want copies of your data stored on multiple nodes, but because you're just running a single node at the moment, you'll ask for a single copy. Specify a value of &ldquo;1&rdquo; and a space and Tab again:

`CREATE KEYSPACE my_keyspace WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};`

You see that `cqlsh` has now added a closing bracket, indicating you've completed all of the required options. Complete the command with a semicolon and return, and your keyspace will be created.

For a production keyspace, you would probably never want to use a value of 1 for the replication factor. There are additional options on creating a keyspace depending on the replication strategy that is chosen. The command completion feature will walk through the different options.


