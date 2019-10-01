#!/bin/bash

set -e

if [[ -z $1 ]];then
  echo "You must pass a topic name as a first arg to this script"
  exit 1
fi

if [[ -z $KAFKA_HOME ]];then
  KAFKA_HOME=$HOME/kafka
fi

echo "Starting zookeeper..."
$KAFKA_HOME/bin/zookeeper-server-start.sh $KAFKA_HOME/config/zookeeper.properties &>/dev/null &

echo "Starting kafka..."
$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties &>/dev/null &

echo "Creating new topic $1..."
TOPIC_NAME=$1
$KAFKA_HOME/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic $TOPIC_NAME
echo "Topic created!"

echo "Listing topics..."
$KAFKA_HOME/bin/kafka-topics.sh --list --bootstrap-server localhost:9092
