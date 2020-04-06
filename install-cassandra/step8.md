# `cqlsh` Command History

You may have noticed that you can navigate through commands you've executed previously in `cqlsh` with the up and down arrow keys. If not, you can give it a try now.

When you're done, exit `cqlsh` using the `EXIT` command:

`EXIT;`{{execute}}

Your command history is stored in a file called _cqlsh_history_, which is located in a hidden directory called _.cassandra_ within your home directory. If you're interested, you can open this file using the file browser to the upper right.

This acts like your bash shell history, listing the commands in a plain-text file in the order Cassandra executed them. Nice!
