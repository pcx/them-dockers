#!/bin/bash

cassandra -p /var/run/cassandra.pid &
echo '##################### SLEEPING 30'
sleep 30
cat schema/*.cql | cqlsh
kill $(cat /var/run/cassandra.pid)
echo '##################### SLEEPING 30'
sleep 30
