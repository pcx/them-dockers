#!/bin/bash
exec java -cp /KafkaOffsetMonitor-assembly-0.2.1.jar com.quantifind.kafka.offsetapp.OffsetGetterWeb --zk $QUEUE_HOST --port 8080 --refresh 5.seconds --retain 2.days
