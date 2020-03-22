#!/bin/bash
echo "export JAVA_HOME=java-8-openjdk-amd64" >>~/.bashrc
echo "export PATH=$JAVA_HOME/bin:$PATH" >>~/.bashrc
mkdir sunshine
mkdir sunshine/src
mkdir sunshine/src/main
mkdir sunshine/src/main/java
mkdir sunshine/src/main/resources
wget https://downloads.apache.org/cassandra/3.11.6/apache-cassandra-3.11.6-bin.tar.gz
tar xzf apache-cassandra-3.11.6-bin.tar.gz
sed -i 's/^cluster_name: .*$/cluster_name: "CQL Quickstart"/g' apache-cassandra-3.11.6/conf/cassandra.yaml
apache-cassandra-3.11.6/bin/cassandra -R
while [ `grep "Starting listening for CQL clients" apache-cassandra-3.11.6/logs/system.log | wc -l` -lt 1 ]; do
   sleep 15
done
apache-cassandra-3.11.6/bin/cqlsh -e "CREATE KEYSPACE demo WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '1'};"
apache-cassandra-3.11.6/bin/cqlsh -e "CREATE TABLE demo.users (lastname text PRIMARY KEY, age int, city text, email text, firstname text);"
echo "done" >> /opt/katacoda-background-finished
