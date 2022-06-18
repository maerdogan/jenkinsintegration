FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install sudo
RUN useradd -ms /bin/bash ubuntu && usermod -aG sudo ubuntu


RUN apt install cron
RUN apt-get install -y libaio1 && apt-get install -y build-essential unzip python-dev libaio-dev && python3 -m pip install cx_Oracle && 
RUN apt-get install -y mlocate
RUN apt-get install -y gzip && apt-get install -y zip
RUN apt-get install -y openjdk-8-jdk
RUN apt-get install -y net-tools && apt-get install -y telnet
RUN apt-get install -y wget

RUN echo "ubuntu ALL=(ALL) NOPASSWD: ALL" >>  /etc/sudoers

# Set as default user
USER ubuntu

CMD echo "hello"
CMD tail -f /dev/null
