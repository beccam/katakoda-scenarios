#!/bin/bash
git clone https://github.com/beccam/cloud-java.git
cd cloud-java
mvn compile
cd ..

echo "done" >> /opt/katacoda-background-finished
