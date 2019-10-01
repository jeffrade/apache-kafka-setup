#!/bin/bash
# See https://kafka.apache.org/quickstart#quickstart_multibroker for a distributed cluster

set -e

if [[ -z $KAFKA_HOME ]];then
  KAFKA_HOME=$HOME/kafka
fi

echo "Starting zookeeper..."
$KAFKA_HOME/bin/zookeeper-server-start.sh $KAFKA_HOME/config/zookeeper.properties &
sleep 5s

echo "Starting kafka..."
$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties &
sleep 5s

echo "Available topics:"
$KAFKA_HOME/bin/kafka-topics.sh --list --bootstrap-server localhost:9092
