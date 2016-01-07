#!/bin/bash
exec /sbin/setuser zookeeper /usr/share/zookeeper/bin/zkServer.sh start-foreground
