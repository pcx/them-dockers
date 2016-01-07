#!/bin/bash
exec /sbin/setuser spark /usr/lib/spark/bin/spark-class org.apache.spark.deploy.worker.Worker spark://$SPARK_MASTER_HOST:7077
