First, lets start up Datastax enterprise
```
tar xzf dse-6.8.tar.gz;
./dse-6.8.0/bin/dse cassandra -R
```{{execute}}

`⌘+C; clear`{{execute}}



Download the Apache Kafka tarball:
`wget http://apache.spinellicreations.com/kafka/2.2.2/kafka_2.11-2.2.2.tgz`{{execute}}


Create a directory for the Kafka installation
`mkdir kafka`

Unpack the tarball into the `kafka` directory
`tar -xzf kafka_2.11-2.2.2.tgz -C kafka --strip-components=1`{{execute}}
