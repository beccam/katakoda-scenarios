Now let’s discuss producers and consumers.

A producer is a client that sends events to Kafka. A consumer is a client that consumes those events.

Producers publish messages to a topic, the broker stores them in the order received, and consumers (DataStax Connector) subscribe and read messages from the topic.

Data is sent using a pull strategy, which means the consumer must request the data before it is sent. This keeps the consumer from being overwhelmed with incoming data.


Setup the simple TickProducer
`git clone https://github.com/beccam/kafka-example.git`{{execute}}

The producer publish messages to the topic, and the Kafka broker stores them in the order received.

Run Producer
```
cd kafka-example/stockticks; mvn clean compile exec:java -Dexec.mainClass=com.datastax.tickdata.producer.TickProducerJson &> producer.log & tail -f producer.log
```{{execute}}

You should see messages like this
```
2018-09-11 21:26:00 INFO  TickProducer:83 - Successfully created 15086 Kafka records
2018-09-11 21:26:05 INFO  TickProducer:83 - Successfully created 190559 Kafka records
2018-09-11 21:26:10 INFO  TickProducer:83 - Successfully created 568748 Kafka records
2018-09-11 21:26:15 INFO  TickProducer:83 - Successfully created 993746 Kafka records
2018-09-11 21:26:20 INFO  TickProducer:83 - Successfully created 1608405 Kafka records
```

`kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --from-beginning --topic tick-stream-json --max-messages 10`{{execute}}
