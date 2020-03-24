#!/bin/bash
mkdir ~/.cassandra
cd ~/.cassandra
unzip secure-connect-database_name.zip
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/jre"
wget https://downloads.apache.org/cassandra/3.11.6/apache-cassandra-3.11.6-bin.tar.gz
tar xzf apache-cassandra-3.11.6-bin.tar.gz
sed -i 's/^cluster_name: .*$/cluster_name: "CQL Quickstart"/g' apache-cassandra-3.11.6/conf/cassandra.yaml
apache-cassandra-3.11.6/bin/cassandra -R
while [ `grep "Starting listening for CQL clients" apache-cassandra-3.11.6/logs/system.log | wc -l` -lt 1 ]; do
   sleep 15
done
echo "done" >> /opt/katacoda-background-finished
