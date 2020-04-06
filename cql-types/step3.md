# Time Data Types

Cassandra provides several types for representing time.

* `date`, `time` - these types can be used to represent a date without a time, and a time of day without reference to a specific date. As you'll see below with `timestamp`, these types support ISO 8601 formats.

* `timestamp` - the time can be encoded as a 64-bit signed integer, but it is typically much more useful to input a timestamp using one of several supported ISO 8601 date formats. For example:

  * `2015-06-15 20:05-0700`
  * `2015-06-15 20:05:07-0700`
  * `2015-06-15 20:05:07.013-0700`
  * `2015-06-15T20:05-0700`
  * `2015-06-15T20:05:07-0700`
  * `2015-06-15T20:05:07.013+-0700`

The best practice for these types is to always provide time zones rather than relying on the operating system time zone configuration.

Let's use the `timestamp` type to add a column to the `user` table representing when the account was created:

`ALTER TABLE user ADD account_created timestamp;`

Now you can insert records including the `account_created` column. You can use the formats listed above:

` user SET account_created = `2015-06-15T20:05:07-0700` WHERE first_name = 'Bill' AND last_name = 'Nguyen';`{{execute}}

Or you could use the `currentTimestamp` function to allow Cassandra to set the timestamp:

` user SET account_created = `2015-06-15T20:05:07-0700` WHERE first_name = 'Bill' AND last_name = 'Nguyen';`{{execute}}

Now check the results:

`SELECT * FROM user where last_name = 'Nguyen';`{{execute}}

toDate()





