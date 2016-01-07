FROM phusion/baseimage:0.9.18
MAINTAINER Phaneendra Chiruvella <hi@pcx.io>

ENV DEBIAN_FRONTEND noninteractive

# Use phusion/baseimage's init system.
CMD ["/sbin/my_init"]

# Add Oracle Java 8 PPA
RUN add-apt-repository -y ppa:webupd8team/java

# refresh apt cache
RUN apt-get update -qq

# Auto-accpept Oracle's license when installing Java
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java8-installer && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/oracle-jdk8-installer /usr/lib/jvm/java-8-oracle/src.zip
