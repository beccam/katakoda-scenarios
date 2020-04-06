# Examine the log file

In a clean installation, you should see quite a few log statements as the server gets running. The exact syntax of logging statements will vary depending on the release you're using, but there are a few highlights you can look for. Search for `cassandra.yaml`:

`grep -m 1 -C 1 "cassandra.yaml" ../logs/system.log`{{execute}}

These log statements indicate the location of the _cassandra.yaml_ file containing the configured settings. The `Node configuration` statement lists out the settings read from the config file.

Now search for `JVM`:

`grep -m 1 -C 1 "JVM" ../logs/system.log`{{execute}}

These log statements provide information describing the JVM being used, including memory settings.

Next, search for the versions in use—`Cassandra version`, `CQL version`, `Native protocol supported versions`:

`grep -m 1 -A 2 "Cassandra version" ../logs/system.log`{{execute}}

You can also find statements where Cassandra is initializing internal data structures, such as caches:

`grep -m 4 "CacheService.java" ../logs/system.log`{{execute}}

You can also search for terms like `JMX`, `gossip`, and `listening`:

`grep -m 1 "JMX" ../logs/system.log`{{execute}}

`grep -m 1 "gossip" ../logs/system.log`{{execute}}

`grep -m 1 "listening" ../logs/system.log`{{execute}}

These log statements indicate the server is beginning to initiate communications with other servers in the cluster and expose publicly available interfaces. By default, the management interface via the Java Management Extensions (JMX) is disabled for remote access. 

Finally, search for `state jump`:

`grep -m 1 -C 1 "listening" ../logs/system.log`{{execute}}


