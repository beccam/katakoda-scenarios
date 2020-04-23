Apache Kafka™ is a distributed streaming message queue. Producers publish messages to a topic, the broker stores them in the order received, and consumers (DataStax Connector) subscribe and read messages from the topic.

![](/assets/messagelog.png.png)

Download the Apache Kafka tarball:
`wget http://apache.spinellicreations.com/kafka/2.2.2/kafka_2.11-2.2.2.tgz`{{execute}}

Create a directory for the Kafka installation
`mkdir kafka`

Unpack the tarball into the `kafka` directory
`tar -xzf kafka_2.11-2.2.2.tgz -C kafka --strip-components=1`{{execute}}
