* Q4. Find an available room in a given date range.

At this point, let's now consider how to support query Q4 to help your users find available rooms at a selected hotel for the nights they are interested in staying. Note that this query involves both a start date and an end date. Because you're querying over a range instead of a single date, you know that you'll need to use the date as a clustering key. Use clustering columns to store attributes that you need to access in a range query. Remember that the order of the clustering columns is important. You'll learn more about range queries in <<writing_and_reading_data>>.

You use the `hotel_id` as a primary key to group room data for each hotel on a single partition, which should help your search be super fast. Let's call this the `available_rooms_by_hotel_date` table.

`CREATE TABLE hotel.available_rooms_by_hotel_date (
    hotel_id text,
    date date,
    room_number smallint,
    is_available boolean,
    PRIMARY KEY ((hotel_id), date, room_number)
);`{{execute}}

The design of the `available_rooms_by_hotel_date` table is an instance of the __wide partition__ pattern. This pattern is sometimes called the __wide row__ pattern when discussing databases that support similar models, but wide partition is a more accurate description from a Cassandra perspective. The essence of the pattern is to group multiple related rows in a partition in order to support fast access to multiple rows within the partition in a single query.
