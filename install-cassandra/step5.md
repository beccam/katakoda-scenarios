# Connect with `cqlsh`

Now that you have a Cassandra installation up and running, let's give it a quick try to make sure everything is set up properly. You'll use the CQL shell (`cqlsh`) to connect to your server and have a look around:

`cqlsh`{{execute}}

Because you did not specify a node to which you wanted to connect, the shell helpfully checks for a node running on the local host, and finds the node you started earlier. The shell also indicates that you're connected to a Cassandra server cluster called &ldquo;Test Cluster.&rdquo; That's because this cluster of one node at `localhost` is set up for you by default.

Let's take a quick tour of `cqlsh` to learn what kinds of commands you can send to the server. You'll see how to use the basic environment commands and how to do a round trip of inserting and retrieving some data.

The `cqlsh` commands are all case insensitive. For these examples, we adopt the convention of uppercase to be consistent with the way the shell describes its own commands in help topics and output.


