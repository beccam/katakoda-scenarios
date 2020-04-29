Using the DataStax Java Driver to connect to a DataStax Astra database is almost identical to using the driver to connect to any normal Apache Cassandra database. The only differences are in how the driver is configured in an application and that you will need to obtain a secure connect bundle.

This short scenario will teach you how to connect to your own DataStax Astra instance through the DataStax Java Driver for Apache Cassandra.

First, you will need to download your credentials for your Astra account.

`curl -L "<paste link here>" > creds.zip`

Provided you are in the `/root` directory, your credentials should be located at `/root/creds.zip`

## *Let's move on to looking at our Java code.*
