# Investigate the contents

Now let's explore the files under the expanded folder _apache-cassandra-x.x.x_, using the file explorer to the upper right:
 
* _NEWS.tx_ includes the release notes describing features included in the current and prior releases
* _CHANGES.txt_ is similar but focuses on bug fixes. You'll want to make sure to review these files whenever you are upgrading to a new version so you know what changes to expect. 
* _LICENSE.txt_ contains the Apache 2.0 license 
* _NOTICE.txt_ contains copyright notices for Cassandra and included software

Next, look around in the directories and see what's there.

* _bin_ - contains the executables to run Cassandra as well as clients, including the query language shell (`cqlsh`). It also has scripts to run the `nodetool`, which is a utility for inspecting a cluster to determine whether it is properly configured, and to perform a variety of maintenance operations. The directory also contains several utilities for performing operations on SSTables, the files in which Cassandra stores its data on disk.

* _conf_ - contains the files for configuring your Cassandra instance. The configuration files you may use most frequently include the _cassandra.yaml_ file, which is the primary configuration for running Cassandra, and the _logback.xml_ file, which lets you change the logging settings to suit your needs. Additional files can be used to configure Java Virtual Machine (JVM) settings, the network topology, metrics reporting, archival and restore commands, and triggers.

* _doc_ - includes a getting started guide, an architectural overview, and instructions for configuring and operating Cassandra.

* _javadoc_ - the documentation website generated using Java's JavaDoc tool. It's helpful if you want to see how the code is laid out. 

* _lib_ - the external libraries that Cassandra needs to run. For example, it uses two different JSON serialization libraries, the Google collections project, and several Apache Commons libraries.

* _pylib_ - Python libraries that are used by `cqlsh`.

* _tools_ - tools that are used to maintain your Cassandra nodes. 