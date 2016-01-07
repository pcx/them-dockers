FROM pcxio/java8:0.1.0
MAINTAINER Phaneendra Chiruvella <hi@pcx.io>

ADD cdh5-repository_1.0_all.deb /cdh5-repository_1.0_all.deb
RUN dpkg -i /cdh5-repository_1.0_all.deb

RUN apt-get update -qq
RUN apt-get install -y spark-core spark-master spark-worker spark-history-server spark-python

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
