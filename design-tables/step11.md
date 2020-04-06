
* Q8. Look up all reservations by guest name.

The hotel staff might wish to see a record of upcoming reservations by date in order to get insight into how the hotel is performing, such as the dates the hotel is sold out or undersold. Q8 supports the retrieval of reservations for a given hotel by date.

`CREATE TABLE reservation.reservations_by_guest (
    guest_last_name text,
    hotel_id text,
    start_date date,
    end_date date,
    room_number smallint,
    confirm_number text,
    guest_id uuid,
    PRIMARY KEY ((guest_last_name), hotel_id)
);`{{execute}}