# Creating User Defined Types

The first two query patterns in the application workflow describe two different ways to get hotels. 

* Q1. Find hotels near a given point of interest.

* Q2. Find information about a given hotel, such as its name and location.

Let's say that you determined that the attributes of a hotel include its id, name, description, phone number, address, and nearby points of interest. Note that an address is itself a more complex object consisting of additional fields. You might choose to model this using Cassandra's User Defined Type (UDT) feature:

`CREATE TYPE hotel.address (
    street text,
    city text,
    state_or_province text,
    postal_code text,
    country text
);`{{execute}}

User-defined types are frequently used to create logical groupings of nonprimary key columns. UDTs can also be stored in collections (sets, lists, or maps) to further reduce complexity in the design. The scope of a UDT is the keyspace in which it is defined. 
