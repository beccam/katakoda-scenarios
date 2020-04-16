#!/bin/bash
Y | sudo apt-get purge openjdk-\*
wget https://download.java.net/java/ga/jdk11/openjdk-11_linux-x64_bin.tar.gz
sha256sum openjdk-11_linux-x64_bin.tar.gz
tar xzvf openjdk-11_linux-x64_bin.tar.gz
sudo mv jdk-11 /usr/lib/jvm/openjdk-11-manual-installation/
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/openjdk-11-manual-installation/bin/java 1
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/openjdk-11-manual-installation/bin/javac 1
wget https://downloads.apache.org/cassandra/4.0-alpha3/apache-cassandra-4.0-alpha3-bin.tar.gz
tar xzf apache-cassandra-4.0-alpha3-bin.tar.gz
sed -i 's/^cluster_name: .*$/cluster_name: "CQL Quickstart"/g' apache-cassandra-4.0-alpha3/conf/cassandra.yaml
#apache-cassandra-4.0-alpha3/bin/cassandra -R
#while [ `grep "Starting listening for CQL clients" apache-cassandra-4.0-alpha3/logs/system.log | wc -l` -lt 1 ]; do
   sleep 15
done
echo "done" >> /opt/katacoda-background-finished
