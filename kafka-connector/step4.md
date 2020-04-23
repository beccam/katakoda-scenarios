Now let’s discuss producers and consumers more.

A producer is a client that sends events to Kafka, such as the "Stocktick Producer" we will be setting up shortly. A consumer is a client that consumes those events.

Producers publish messages to a topic, the broker(Kafka server) stores them in the order received, and consumers (DataStax Connector) subscribe and read messages from the topic.

Data is sent using a pull strategy, which means the consumer must request the data before it is sent. This keeps the consumer from being overwhelmed with incoming data.

Let's Setup the simple TickProducer
`git clone https://github.com/beccam/kafka-example.git`{{execute}}

The producer publish messages to the topic, and the Kafka broker stores them in the order received.

Run Producer
```
cd kafka-example/stockticks; mvn clean compile exec:java -Dexec.mainClass=com.datastax.tickdata.producer.TickProducerJson &> producer.log & tail -f producer.log
```{{execute}}

You should see messages like this
```
2020-04-23 14:05:15 INFO  TickProducer:83 - Successfully created 33536 Kafka records
2020-04-23 14:05:20 INFO  TickProducer:83 - Successfully created 281611 Kafka records
2020-04-23 14:05:25 INFO  TickProducer:83 - Successfully created 754991 Kafka records
2020-04-23 14:05:30 INFO  TickProducer:83 - Successfully created 1217310 Kafka records
2020-04-23 14:05:35 INFO  TickProducer:83 - Successfully created 1900916 Kafka records
```

`kafka/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --from-beginning --topic tick-stream-json --max-messages 10`{{execute}}
