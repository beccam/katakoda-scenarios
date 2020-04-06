
* Q5. Find the rate and amenities for a room.

In order to round out the shopping portion of your data model, you add the `amenities_by_room` table to support Q5. This will allow your user to view the amenities of one of the rooms that is available for the desired stay dates.

`CREATE TABLE hotel.amenities_by_room (
    hotel_id text,
    room_number smallint,
    amenity_name text,
    description text,
    PRIMARY KEY ((hotel_id, room_number), amenity_name)
);`{{execute}}