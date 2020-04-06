# Creating Denormalized Tables

* Q2. Find information about a given hotel, such as its name and location.

For the second query (Q2), you'll need a table to get information about a specific hotel. One approach would be to put all of the attributes of a hotel in the `hotels_by_poi` table, but you choose to add only those attributes required by your application workflow.

From the workflow diagram, you note that the `hotels_by_poi` table is used to display a list of hotels with basic information on each hotel, and the application knows the unique identifiers of the hotels returned. When the user selects a hotel to view details, you can then use Q2, which is used to obtain details about the hotel. Because you already have the `hotel_id` from Q1, you use that as a reference to the hotel you're looking for. Therefore the second table is just called `hotels`.

`CREATE TABLE hotel.hotels (
    id text PRIMARY KEY,
    name text,
    phone text,
    address frozen<address>,
    pois set<text>
);`{{execute}}

Another option would be to store a set of `poi_names` in the `hotels` table. This is an equally valid approach. You'll learn through experience which approach is best for your application.
