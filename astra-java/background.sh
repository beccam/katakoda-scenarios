#!/bin/bash
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/jre"

git clone https://github.com/beccam/cloud-java.git
cd cloud-java
mvn compile
cd ..

echo "done" >> /opt/katacoda-background-finished
