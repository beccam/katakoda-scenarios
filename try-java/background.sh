#!/bin/bash
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"

touch .mavenrc
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64" > .mavenrc

git clone https://github.com/DataStax-Examples/quickstart-java.git
cd quickstart-java
mvn compile
cd ..

apt-get update
apt install -y openjdk-11-jdk-headless

wget https://archive.apache.org/dist/cassandra/4.0-alpha3/apache-cassandra-4.0-alpha3-bin.tar.gz
tar xzf apache-cassandra-4.0-alpha3-bin.tar.gz
apache-cassandra-4.0-alpha3/bin/cassandra -R

while [ `grep "Starting listening for CQL clients" apache-cassandra-4.0-alpha3/logs/system.log | wc -l` -lt 1 ]; do
   sleep 15
done
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
echo "done" >> /opt/katacoda-background-finished
