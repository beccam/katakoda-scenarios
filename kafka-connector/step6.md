Upon starting the Kafka connect worker, a persistent java process is created that reads either the `connect-distributed.properties` file for multi-node connect clusters, or  the `connect-standalone.properties` file for single node clusters. This points to where the `kafka-connect-dse.jar` is located
```
#connect-standalone.properties

bootstrap.servers=localhost:9092

key.converter=org.apache.kafka.connect.storage.StringConverter
value.converter=org.apache.kafka.connect.storage.StringConverter
key.converter.schemas.enable=false
value.converter.schemas.enable=false

offset.storage.file.filename=/tmp/connect.offsets
offset.flush.interval.ms=10000

plugin.path=/root/kafka-connect/kafka-connect-dse-1.3.1.jar
```
Move this file into the `kafka/config
mv connect-standalone.properties kafka/config`{{execute}}

The `dse-sink.json` holds important DataStax Apache Kafka™ Connector parameters.
```
#dse-sink.json

name=change-me
connector.class=com.datastax.kafkaconnector.DseSinkConnector
tasks.max=10

loadBalancing.localDc=Cassandra
contactPoints=localhost
port=9042

topics=tick-stream-json
topic.tick-stream-json.stocks.ticks.mapping=symbol=value.symbol, ts=value.dateTime, exchange=value.exchange, industry=value.industry, name=value.name, value=value.value
```

Move this file into `kafka-connect/conf/`
`mv dse-sink.properties kafka-connect/conf/`{{execute}}
