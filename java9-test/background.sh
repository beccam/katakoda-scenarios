#!/bin/bash
yes | sudo apt-get purge openjdk-\*
yes | sudo apt install openjdk-9-jre
export JAVA_HOME="/usr/lib/jvm/java-9-openjdk-amd64/bin/java"
wget https://github.com/apache/cassandra/archive/apache-cassandra-4.0-alpha3-bin.tar.gz
tar xzf apache-cassandra-4.0-alpha3-bin.tar.gz
sed -i 's/^cluster_name: .*$/cluster_name: "CQL Quickstart"/g' apache-cassandra-4.0-alpha3/conf/cassandra.yaml
apache-cassandra-3.11.6/bin/cassandra -R
while [ `grep "Starting listening for CQL clients" apache-cassandra-4.0-alpha3/logs/system.log | wc -l` -lt 1 ]; do
   sleep 15
done
echo "done" >> /opt/katacoda-background-finished
