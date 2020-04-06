#!/bin/bash
echo "export JAVA_HOME=java-8-openjdk-amd64" >>~/.bashrc
echo "export PATH=$JAVA_HOME/bin:$PATH" >>~/.bashrc
wget https://downloads.apache.org/cassandra/3.11.6/apache-cassandra-3.11.6-bin.tar.gz
tar xzf apache-cassandra-3.11.6-bin.tar.gz
apache-cassandra-3.11.6/bin/cassandra -R
while [ `grep "Starting listening for CQL clients" apache-cassandra-3.11.6/logs/system.log | wc -l` -lt 1 ]; do
   sleep 15
done
echo "done" >> /opt/katacoda-background-finished
