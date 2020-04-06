

* Q3. Find points of interest near a given hotel.

Q3 is just a reverse of Q1—looking for points of interest near a hotel, rather than hotels near a point of interest. This time, however, you need to access the details of each point of interest, as represented by the `pois_by_hotel` table. As you did previously, you add the point of interest name as a clustering key to guarantee uniqueness.

`CREATE TABLE hotel.pois_by_hotel (
    poi_name text,
    hotel_id text,
    description text,
    PRIMARY KEY ((hotel_id), poi_name)
);`{{execute}}
