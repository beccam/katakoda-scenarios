#!/bin/bash
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/jre"

git clone https://github.com/DataStax-Examples/quickstart-java
cd quickstart-java
mvn compile
cd ..

apt-get update
apt install -y openjdk-11-jdk-headless

echo "done" >> /opt/katacoda-background-finished
