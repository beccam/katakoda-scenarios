Kafka uses Zookeeper for cluster management. It runs on each broker and ensures that it is healthy, that it can communicate with the cluster, and that it can perform assigned tasks.

Zookeeper must be running in order for the broker to receive or stream messages.

Start Zookeeper
`kafka/bin/zookeeper-server-start.sh kafka/config/zookeeper.properties &> zookeeper_start.log &`{{execute}}

Next, let's start the Kafka broker (server)

`kafka/bin/kafka-server-start.sh kafka/config/server.properties &> kafka_start.log &`{{execute}}
