FROM pcxio/java8:0.1.0
MAINTAINER Phaneendra Chiruvella <hi@pcx.io>

RUN apt-get update -qq && apt-get install -y git libxext-dev libxrender-dev libxslt1.1 libxtst-dev libgtk2.0-0 libcanberra-gtk-module unzip fonts-ubuntu-font-family-console ttf-ubuntu-font-family wget 

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
