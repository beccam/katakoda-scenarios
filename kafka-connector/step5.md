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
```
