# Numeric Types

CQL supports the numeric types you'd expect, including integer and floating-point numbers. These types are similar to standard types in Java and other languages:

* `int` - A variable precision signed integer (equivalent to `java.math.BigInteger`)

* `float` - A variable precision decimal (equivalent to `java.math.BigDecimal`)

* `bigint` - A 64-bit signed long integer (equivalent to a Java `long`)

* `smallint` - A 16-bit signed integer (equivalent to a Java `short`)

* `tinyint` - An 8-bit signed integer (as in Java)

* `varint` - A variable precision signed integer (equivalent to `java.math.BigInteger`)

* `float` - A 32-bit IEEE-754 floating point (as in Java)

* `double` - A 64-bit IEEE-754 floating point (as in Java)

* `decimal` - A variable precision decimal (equivalent to `java.math.BigDecimal`)

Let's use the `int` type to add a column to the `user` table to track the number of times the user has logged in:

`ALTER TABLE user ADD logins int;`

Now you can update existing records to include `logins`. Numeric values are inserted without quotes:

`UPDATE user SET logins = 1 WHERE first_name = 'Bill' AND last_name = 'Nguyen';`{{execute}}

Query the data to see how values appear:

`SELECT * FROM user where last_name = 'Nguyen';`{{execute}}