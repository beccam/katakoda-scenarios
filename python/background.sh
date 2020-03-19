#!/bin/bash
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/jre"
wget https://downloads.apache.org/cassandra/3.11.6/apache-cassandra-3.11.6-bin.tar.gz
tar xzf apache-cassandra-3.11.6-bin.tar.gz
mv apache-cassandra-3.11.6 node
config_node
node/bin/cassandra -R
while [ `grep "Starting listening for CQL clients" node/logs/system.log | wc -l` -lt 1 ]; do
   sleep 15
done
node/bin/cqlsh -e "CREATE KEYSPACE killrvideo WITH replication = {'class':'SimpleStrategy', 'replication_factor': 1};"
node/bin/cqlsh -e "CREATE TABLE videos (video_id TIMEUUID, added_date TIMESTAMP, title TEXT, PRIMARY KEY (video_id));" -k killrvideo
node/bin/cqlsh -e "COPY videos(video_id, added_date, title) FROM '/root/data-files/videos.csv' WITH HEADER=TRUE;" -k killrvideo
node/bin/cqlsh -e "CREATE TABLE videos_by_tag (tag TEXT, video_id TIMEUUID, added_date TIMESTAMP, title TEXT, PRIMARY KEY ((tag), added_date, video_id)) WITH CLUSTERING ORDER BY (added_date DESC, video_id ASC);" -k killrvideo
node/bin/cqlsh -e "COPY videos_by_tag(tag, video_id, added_date, title) FROM '/root/data-files/videos-by-tag.csv' WITH HEADER = TRUE;" -k killrvideo
pip install cassandra-driver
echo "done" >> /opt/katacoda-background-finished
