Run the connector

```
kafka/bin/connect-standalone.sh kafka/config/connect-standalone.properties kafka-connect/conf/dse-sink.properties &> standalone-mode.log &
tail -f standalone-mode.log
```{{execute}}

Run `cqlsh` and check to see if the data is there:

`/root/dse-6.8.0/bin/cqlsh`{{execute}}

`SELECT * FROM stocks.tick`{{execute}}
