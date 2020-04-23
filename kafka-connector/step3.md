Create Topic
`kafka/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 10 --topic tick-stream-json --config retention.ms=-1`{{execute}}
