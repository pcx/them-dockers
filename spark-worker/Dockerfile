FROM zemoso/zetarget-spark:0.1.0
MAINTAINER Phaneendra Chiruvella <phaneendra@zemosolabs.com>

RUN mkdir -p /etc/service/spark-worker
ADD spark-worker.sh /etc/service/spark-worker/run

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
