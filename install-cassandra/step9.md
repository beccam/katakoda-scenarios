# Stop Cassandra

Now that you've successfully started a Cassandra server, you may be wondering how to stop it. You may have noticed the `stop-server` command in the _bin_ directory. Let's try running that command:

`./stop-server`{{execute}

So you see that the server has not been stopped, but instead you are directed to read the script. If you examine this file using the editor to the upper right, you'll learn that the way to stop Cassandra is to kill the JVM process that is running Cassandra. The file suggests a couple of different techniques by which you can identify the JVM process and kill it.

The first technique is to start Cassandra using the `-p` option, which provides Cassandra with the name of a file to which it should write the process identifier (PID) upon starting up. This is arguably the most straightforward approach to making sure you kill the right process.

However, because you did not start Cassandra with the `-p` option, you'll need to find the process yourself and kill it. The script suggests using `pgrep` to locate processes for the current user containing the term &ldquo;cassandra&rdquo;:

`user=``whoami`` `{execute}

`pgrep -u $user -f cassandra | xargs kill −9`{{execute}}
