Run the connector

```
kafka/bin/connect-standalone.sh kafka/config/connect-standalone.properties kafka-connect/conf/dse-sink.properties &> standalone-mode.log &
tail -f standalone-mode.log
```{{execute}}
