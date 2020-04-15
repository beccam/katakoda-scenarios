#!/bin/bash
yes | sudo apt-get purge openjdk-\*
yes | sudo apt-get install openjdk-11-jre openjdk-11-jdk
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/bin/java"
wget https://downloads.apache.org/cassandra/4.0-alpha3/apache-cassandra-4.0-alpha3-bin.tar.gz
tar xzf apache-cassandra-4.0-alpha3-bin.tar.gz
sed -i 's/^cluster_name: .*$/cluster_name: "CQL Quickstart"/g' apache-cassandra-4.0-alpha3/conf/cassandra.yaml
apache-cassandra-4.0-alpha3/bin/cassandra -R
while [ `grep "Starting listening for CQL clients" apache-cassandra-4.0-alpha3/logs/system.log | wc -l` -lt 1 ]; do
   sleep 15
done
echo "done" >> /opt/katacoda-background-finished
