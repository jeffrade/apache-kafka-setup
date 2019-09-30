#!/bin/bash

set -e

echo "Starting..."

if [[ -z $JAVA_HOME ]]; then
  echo "You must set JAVA_HOME"
  exit 1
fi

if [[ ! -d $HOME/kafka ]]; then
  wget https://www-us.apache.org/dist/kafka/2.3.0/kafka_2.12-2.3.0.tgz
  tar -zxf kafka_2.12-2.3.0.tgz
  mv kafka_2.12-2.3.0 $HOME/kafka
fi

echo "Installation complete!"
