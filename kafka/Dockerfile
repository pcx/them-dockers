FROM zemoso/zetarget-java8:0.1.0
MAINTAINER Phaneendra Chiruvella <phaneendra@zemosolabs.com>

RUN apt-get install -y zookeeperd
RUN mkdir -p /etc/service/zookeeper
ADD zookeeper.sh /etc/service/zookeeper/run

RUN wget http://www.us.apache.org/dist/kafka/0.8.2.2/kafka_2.10-0.8.2.2.tgz -O /tmp/kafka_2.10-0.8.2.2.tgz \
    && tar -xvzf /tmp/kafka_2.10-0.8.2.2.tgz \
    && mkdir -p /kafka_2.10-0.8.2.2/logs \
    && useradd -ms /bin/bash kafka \
    && chown -R kafka:kafka  /kafka_2.10-0.8.2.2/logs

RUN mkdir -p /etc/service/kafka
ADD kafka.sh /etc/service/kafka/run

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
