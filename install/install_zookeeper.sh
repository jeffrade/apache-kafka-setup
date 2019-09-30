#!/bin/bash

set -e

echo "Starting..."

if [[ -z $JAVA_HOME ]]; then
  echo "You must set JAVA_HOME"
  exit 1
fi

if [[ ! -d $HOME/zookeeper ]]; then
  wget https://archive.apache.org/dist/zookeeper/zookeeper-3.4.14/zookeeper-3.4.14.tar.gz
  tar -zxf zookeeper-3.4.14.tar.gz
  mv zookeeper-3.4.14 $HOME/zookeeper
fi

sudo mkdir -p /var/lib/zookeeper

if [[ ! -f $HOME/zookeeper/conf/zoo.cfg ]]; then
  touch $HOME/zookeeper/conf/zoo.cfg
  echo "tickTime=2000" >> $HOME/zookeeper/conf/zoo.cfg
  echo "dataDir=/var/lib/zookeeper" >> $HOME/zookeeper/conf/zoo.cfg
  echo "clientPort=2181" >> $HOME/zookeeper/conf/zoo.cfg 
fi

echo "Installation complete!"
