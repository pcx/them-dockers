#!/bin/bash
exec /sbin/setuser kafka /kafka_2.10-0.8.2.2/bin/kafka-server-start.sh /kafka_2.10-0.8.2.2/config/server.properties
