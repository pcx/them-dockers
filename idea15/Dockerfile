FROM pcxio/java8:0.1.0
MAINTAINER Phaneendra Chiruvella <hi@pcx.io>
RUN apt-get update -qq && apt-get install -y git libxext-dev libxrender-dev libxslt1.1 libxtst-dev libgtk2.0-0 libcanberra-gtk-module unzip fonts-ubuntu-font-family-console ttf-ubuntu-font-family wget
RUN useradd -ms /bin/bash idea

USER idea
ENV HOME /home/idea
WORKDIR ${HOME}

RUN wget  https://download.jetbrains.com/idea/ideaIC-15.0.3.tar.gz  && tar -xzvf  ideaIC-15.0.3.tar.gz && rm  ideaIC-15.0.3.tar.gz && mv $(find -maxdepth 1 -type d -not -path "." -iname "idea*") "idea15"


USER root
RUN mkdir -p /etc/service/idea15
ADD idea15.sh /etc/service/idea15/run

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
