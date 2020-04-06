# User Defined Types

Collection types are very useful in cases where you need to store a variable number of elements within a single column. Now you might decide that you need to keep track of physical addresses for your users. You could just use a single text column to store these values, but that would put the burden of parsing the various components of the address on the application. It would be better if you could define a structure in which to store the addresses to maintain the integrity of the different components.

Fortunately, Cassandra provides a way to define your own user-defined types (UDTs) to extend its data model. For example, you can create your own address type:

`CREATE TYPE address (
  street text,
  city text,
  state text,
  zip_code int);`{{execute}}

A UDT is scoped by the keyspace in which it is defined. You could have written `CREATE TYPE my_keyspace.address`. If you describe the keyspace, you'll see that the address type is part of the definition:

`DESCRIBE KEYSPACE my_keyspace`{{execute}}

Now that you have defined the `address` type, you can use it in the `user` table. Rather than simply adding a single address, you can use a map to store multiple addresses to which you can give names such as "home," "work," and so on. However, you immediately run into a problem:

`ALTER TABLE user ADD
  addresses map<text, address>;`{{execute}}

What is going on here? It turns out that a user-defined data type is considered a collection, as its implementation is similar to a `set`, `list`, or `map`. You've asked Cassandra to nest one collection inside another.

Cassandra releases prior to 2.2 do not fully support the nesting of collections. Specifically, the ability to access individual attributes of a nested collection is not yet supported, because the nested collection is serialized as a single object by the implementation. Therefore, the entire nested collection must be read and written in its entirety.

Freezing is a concept that was introduced as a forward compatibility mechanism. For now, you can nest a collection within another collection by marking it as `frozen`, which means that Cassandra will store that value as a blob of binary data. In the future, when nested collections are fully supported, there will be a mechanism to &ldquo;unfreeze&rdquo; the nested collections, allowing the individual attributes to be accessed.

You can also use a collection as a primary key if it is frozen. Now that we've taken a short detour to discuss freezing and nested tables, let's get back to modifying your table, this time marking the address as frozen:

`ALTER TABLE user ADD addresses map<text,
  frozen<address>>;`{{execute}}

Now let's add a home address for Mary:

`UPDATE user SET addresses = addresses +
  {'home': { street: '7712 E. Broadway', city: 'Tucson',
  state: 'AZ', zip_code: 85715 } }
  WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}
  
See the results:

`SELECT addresses FROM user
  WHERE first_name = 'Mary' AND last_name = 'Rodriguez';`{{execute}}

