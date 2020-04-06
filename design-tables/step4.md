# Creating Tables Based on Access Patterns

* Q1. Find hotels near a given point of interest.

The first query (Q1) is to find hotels near a point of interest, so you'll call the table `hotels_by_poi`. You're searching by a named point of interest, so that is a clue that the point of interest should be a part of the primary key. Let's reference the point of interest by name, because according to your workflow that is how your users will start their search.

You'll note that you certainly could have more than one hotel near a given point of interest, so you'll need another component in your primary key in order to make sure you have a unique partition for each hotel. So you add the hotel key as a clustering column.

An important consideration in designing your table's primary key is making sure that it defines a unique data element. Otherwise you run the risk of accidentally overwriting data.

Let's also assume that according to your application workflow, your user will provide a name of a point of interest, but would benefit from seeing the description of the point of interest alongside hotel results. Therefore you include the `poi_description` as a column in the `hotels_by_poi` table, and designate this value as a static column since the point of interest description is the same for all rows in a partition.

You can create this table using the following command in `cqlsh`:

`CREATE TABLE hotel.hotels_by_poi (
    poi_name text,
    poi_description text STATIC,
    hotel_id text,
    name text,
    phone text,
    address frozen<address>,
    PRIMARY KEY ((poi_name), hotel_id)
) 
AND CLUSTERING ORDER BY (hotel_id ASC);
`{{execute}}
