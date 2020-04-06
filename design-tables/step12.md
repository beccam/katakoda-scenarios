* Q9. View guest details.

Finally, you create a `guests` table. You'll notice that it has similar attributes to the `user` table from <<the_cassandra_query_language>>. This provides a single location that you can use to store data about guests. In this case, you specify a separate unique identifier for your guest records, as it is not uncommon for guests to have the same name. In many organizations, a customer database such as the `guests` table would be part of a separate customer management application, which is why we've omitted other guest access patterns from this example.

`CREATE TABLE reservation.guests (
    guest_id uuid PRIMARY KEY,
    first_name text,
    last_name text,
    title text,
    emails set<text>,
    phone_numbers list<text>,
    addresses map<text, frozen<address>>,
    confirm_number text
);`{{execute}}

Q8 and Q9 in particular help to remind you that you need to create queries that support various stakeholders of your application, not just customers but staff as well, and perhaps even the analytics team, suppliers, and so on.

