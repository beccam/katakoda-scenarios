#!/bin/bash
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/jre"
wget http://apache.spinellicreations.com/kafka/2.2.2/kafka_2.11-2.2.2.tgz
mkdir kafka
tar -xzf kafka_2.11-2.2.2.tgz -C kafka --strip-components=1
wget https://downloads.datastax.com/enterprise/dse-6.8.tar.gz
tar xzf dse-6.8.tar.gz
sed -i 's/^cluster_name: .*$/cluster_name: "CQL Quickstart"/g' dse-6.8.0/resources/cassandra/conf/cassandra.yaml
dse-6.8.0/bin/dse cassandra -R
while [ `grep "Starting listening for CQL clients" /var/log/cassandra/system.log | wc -l` -lt 1 ]; do
 sleep 15
done
echo "done" >> /opt/katacoda-background-finished
