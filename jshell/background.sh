#!/bin/bash
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/jre"

git clone https://github.com/beccam/cloud-java.git
cd cloud-java
mvn compile
cd ..

apt-get update
apt install -y openjdk-11-jdk-headless

echo "done" >> /opt/katacoda-background-finished
