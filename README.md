# Apache Kafka Setup

#### Repository for setting up and running Apache Kafka on Linux

## Install
Run the following scripts in order:
```
$ ./install/install_java.sh
$ ./install/install_zookeeper.sh
$ ./install/install_kafka_server.sh
$ ./install/kafka_topic_create.sh my-test-topic
```

## Usage
To start Kafka:
```
$ ./install/kafka_start.sh
```

Then, start a consumer:
```
$ $KAFKA_HOME/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic my-test-topic
```

Then (in another terminal), start a producer and send a message:
```
$ $KAFKA_HOME/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic my-test-topic
>This is a test message
```

You'll see the same message in the first terminal where the consumer is running.
