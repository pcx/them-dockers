#!/bin/bash
exec /sbin/setuser spark /usr/lib/spark/bin/spark-class org.apache.spark.deploy.master.Master
