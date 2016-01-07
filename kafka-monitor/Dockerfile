FROM zemoso/zetarget-java8:0.1.0
MAINTAINER Phaneendra Chiruvella <phaneendra@zemosolabs.com>

ADD KafkaOffsetMonitor-assembly-0.2.1.jar /KafkaOffsetMonitor-assembly-0.2.1.jar
RUN mkdir -p /etc/service/kafka-monitor
ADD kafka-monitor.sh /etc/service/kafka-monitor/run

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
