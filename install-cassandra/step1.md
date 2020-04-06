# Install the binary distribution

While there are a number of options available for installing Cassandra on various operating systems, let's start your journey by downloading the Apache distribution from [the Apache website](http://cassandra.apache.org) so you can get a good look at what's inside.

`wget http://archive.apache.org/dist/cassandra/4.0-alpha3/apache-cassandra-4.0-alpha3-bin.tar.gz`{{execute}}

You can unpack the compressed file using any regular ZIP utility. On Unix-based systems such as Linux or macOS, gzip extraction utilities should be preinstalled. On some platforms, you might have to extract the ZIP file and the TAR file in separate steps, but you can do it in a single step on this Linux machine:

`tar xvzf apache-cassandra-4.0-alpha3-bin.tar.gz`{{execute}}

Now you have a folder on your filesystem called _apache-cassandra-x.x.x_.




