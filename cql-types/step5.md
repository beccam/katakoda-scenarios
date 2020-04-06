# Miscellaneous Data Types

CQL provides several other simple data types that don't fall nicely into one of the preceding categories:

* `boolean` - This is a simple true/false value. `cqlsh` is case insensitive in accepting these values but outputs `True` or `False`.
    
* `blob`- a _binary large object_ (blob) is a colloquial computing term for an arbitrary array of bytes. The CQL `blob` type is useful for storing media or other binary file types. Cassandra does not validate or examine the bytes in a blob. CQL represents the data as hexadecimal digits—for example, `0x00000ab83cf0`. If you want to encode arbitrary textual data into the blob, you can use the `textAsBlob()` function in order to specify values for entry. See the `cqlsh` help function `HELP BLOB_INPUT` for more information.

* `inet` - this type represents IPv4 or IPv6 internet addresses. `cqlsh` accepts any legal format for defining IPv4 addresses, including dotted or nondotted representations containing decimal, octal, or hexadecimal values. However, the values are represented using the dotted decimal format in `cqlsh` output—for example, `192.0.2.235`. IPv6 addresses are represented as eight groups of four hexadecimal digits, separated by colons—for example, `2001:0db8:85a3:0000:0000:8a2e:0370:7334`.

* `counter` - the counter data type provides a 64-bit signed integer, whose value cannot be set directly, but only incremented or decremented. Cassandra is one of the few databases that provides race-free increments across data centers. Counters are frequently used for tracking statistics such as numbers of page views, tweets, log messages, and so on. The `counter` type has some special restrictions. It cannot be used as part of a primary key. If a counter is used, all of the columns other than primary key columns must be counters.

For example, you could create an additional table to count the number of times a user has visited a website:

`CREATE TABLE user_visits (user_id uuid PRIMARY KEY, visits counter);`{{execute}}

You'd then increment the value for user "Mary" according to the unique ID assigned previously each time she visits the site:

`UPDATE user_visits SET visits = visits + 1 WHERE user_id=ebf87fee-b372-4104-8a22-00c1252e3e05;`{{execute}}

And you could read out the value of the counter just as you read any other column:

`SELECT visits from user_visits WHERE user_id=ebf87fee-b372-4104-8a22-00c1252e3e05;`{{execute}}

There is no operation to reset a counter directly, but you can approximate a reset by reading the counter value and decrementing by that value. Unfortunately, this is not guaranteed to work perfectly, as the counter may have been changed elsewhere in between reading and writing.

The counter increment and decrement operators are not _idempotent_. An idempotent operation is one that will produce the same result when executed multiple times. Incrementing and decrementing are not idempotent because executing them multiple times could result in different results as the stored value is increased or decreased.
