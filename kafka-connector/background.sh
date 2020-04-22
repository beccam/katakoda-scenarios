#!/bin/bash
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/jre"
wget http://apache.spinellicreations.com/kafka/2.2.2/kafka_2.11-2.2.2.tgz
mkdir kafka; tar -xzf kafka_2.11-2.2.2.tgz -C kafka --strip-components=1
wget https://downloads.datastax.com/enterprise/dse-6.8.tar.gz
tar xzf dse-6.8.tar.gz
dse-6.8/bin/cassandra -R
echo "done" >> /opt/katacoda-background-finished
