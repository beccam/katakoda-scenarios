Now if your application is to be a success, you'll certainly want your customers to be able to book reservations at your hotels. This includes steps such as selecting an available room and entering their guest information. So clearly you will also need some queries that address the reservation and guest entities from the conceptual data model. Even here, however, you'll want to think not only from the customer perspective in terms of how the data is written, but also in terms of how the data will be queried by downstream use cases.

Our natural tendency as data modelers would be to focus first on designing the tables to store reservation and guest records, and only then start thinking about the queries that would access them. You may have felt a similar tension already when we began discussing the shopping queries before, thinking &ldquo;but where did the hotel and point of interest data come from?&rdquo; Don't worry, we will get to this soon enough. Here are some queries that describe how your users will access reservations:


* Q6. Look up a reservation by confirmation number.

n order to satisfy Q6, the `reservations_by_confirmation` table supports the lookup of reservations by a unique confirmation number provided to the customer at the time of booking.

`CREATE TABLE reservation.reservations_by_confirmation (
    confirm_number text,
    hotel_id text,
    start_date date,
    end_date date,
    room_number smallint,
    guest_id uuid,
    PRIMARY KEY (confirm_number)
);`{{execute}}