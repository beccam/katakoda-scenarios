# The `HELP` Command

To get help for `cqlsh`, type `HELP` or `?` to see the list of available commands:

`HELP`{{execute}}

To get additional documentation about a particular command, type `HELP &lt;command&gt;`. 

Many `cqlsh` commands may be used with no parameters, in which case they print out the current setting. Examples include `CONSISTENCY`, `EXPAND`, and `PAGING`.

You can use the `SHOW VERSION` command to see the versions of Cassandra and the CQL Native Protocol in use:

`SHOW VERSION`{{execute}}

You may have noticed that this version info is printed out when `cqlsh` starts.  