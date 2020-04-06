# Identity Data Types

The identity of data elements such as rows and partitions is important in any data model in order to be able to access the data. Cassandra provides two types of _universally unique identifier_ (UUID). A UUID is a 128-bit value in which the bits conform to one of several types, of which the most commonly used are known as Type 1 and Type 4. UUIDs are typically represented as dash-separated sequences of hex digits. For example: `1a6300ca-0572-4736-a393-c0b7229e193e`.

* `uuid` - a Type 4 UUID, which is based entirely on random numbers.  The `uuid` type is often used as a surrogate key, either by itself or in combination with other values. You can also obtain a Type 4 UUID value via the CQL `uuid()` function and use this value in an `INSERT` or `UPDATE`.

* `timeuuid` - This is a Type 1 UUID, which is based on the MAC address of the computer, the system time, and a sequence number used to prevent duplicates. This type is frequently used as a conflict-free timestamp. CQL provides several convenience functions for interacting with the `timeuuid` type: `now()`, `dateOf()`, and `unixTimestampOf()`.

You might determine that you'd like to assign a unique ID to each user, as `first_name` is perhaps not a sufficiently unique key for the `user` table. After all, it's very likely that you'll run into users with the same first name at some point. Let's add the identifier using a `uuid`:

`ALTER TABLE user ADD id uuid;`{{execute}}

Next, insert an ID for Mary using the `uuid()` function: 

`UPDATE user SET id = uuid() WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}
  
Then view the results:

`SELECT first_name, id FROM user WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}

Notice that the `id` is in UUID format.