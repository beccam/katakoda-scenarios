A topic is a set of related data stored in Apache Kafka. Topics are defined and configured by a developer. Once set up, systems can publish to or receive data from that topic.

All Kafka records are organized into topics. Producer applications write data to topics and consumer applications read from topics.

Create Topic
`kafka/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 10 --topic tick-stream-json --config retention.ms=-1`{{execute}}
