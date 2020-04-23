Head back to the tab where DSE had been starting up. Next we are going prepare our schema for the stockticks that will be coming into DSE.

Open `cqlsh`

`dse-6.8.0/bin/cqlsh`{{execute}}

Setup DSE schema
```
CREATE KEYSPACE stocks WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
CREATE TABLE stocks.ticks (
    symbol text,
    ts timestamp,
    exchange text,
    industry text,
    name text,
    value double,
    PRIMARY KEY (symbol, ts)
);
```{{execute}}

Once the keyspace and table have been created, you can `exit`{{execute}} *cqlsh*

Return to the tab where we had been compiling 
