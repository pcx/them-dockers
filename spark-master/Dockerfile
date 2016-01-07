FROM pcxio/spark1.5:0.1.0
MAINTAINER Phaneendra Chiruvella <hi@pcx.io>

RUN mkdir -p /etc/service/spark-master
ADD spark-master.sh /etc/service/spark-master/run

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
