#!/bin/bash

set -e

echo "Starting..."

wget https://download.java.net/java/GA/jdk12.0.1/69cfe15208a647278a19ef0990eea691/12/GPL/openjdk-12.0.1_linux-x64_bin.tar.gz
tar -xzvf openjdk-12.0.1_linux-x64_bin.tar.gz 
mv jdk-12.0.1 $HOME/.
echo "PATH=$PATH:$HOME/jdk-12.0.1/bin" >> ~/.bash_profile
echo "export PATH" >> ~/.bash_profile
echo "export JAVA_HOME=$HOME/jdk-12.0.1" >> ~/.bash_profile

echo "Installation complete!"
