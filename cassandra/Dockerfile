FROM phusion/baseimage:0.9.17
MAINTAINER Phaneendra Chiruvella <phaneendra@zemosolabs.com>

ENV DEBIAN_FRONTEND noninteractive

# Use phusion/baseimage's init system.
CMD ["/sbin/my_init"]

# Add Oracle Java 8 PPA
RUN add-apt-repository -y ppa:webupd8team/java
# Add datastax repo
RUN echo "deb http://debian.datastax.com/community stable main" | tee -a /etc/apt/sources.list.d/cassandra.sources.list
# Add datastax repo key
RUN curl -L http://debian.datastax.com/debian/repo_key | apt-key add -

# refresh apt cache
RUN apt-get update -qq

# Auto-accpept Oracle's license when installing Java
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java8-installer dsc21=2.1.11-1 cassandra=2.1.11

ADD schema /schema
ADD restore-schema.sh /restore-schema.sh
RUN ./restore-schema.sh

ADD cassandra.yaml /etc/cassandra/cassandra.yaml
RUN chown -R cassandra:cassandra /var/lib/cassandra /var/log/cassandra
RUN mkdir -p /etc/service/cassandra
ADD cassandra.sh /etc/service/cassandra/run

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
