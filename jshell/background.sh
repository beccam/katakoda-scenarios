#!/bin/bash
git clone https://github.com/beccam/cloud-java.git
cd cloud-java
mvn compile
cd ..

apt-get update
apt install -y openjdk-11-jdk-headless

echo "done" >> /opt/katacoda-background-finished
