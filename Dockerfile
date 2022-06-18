FROM ubuntu:latest

CMD apt-get -y install sudo
RUN useradd -ms /bin/bash ubuntu && usermod -aG sudo ubuntu

RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt install cron
RUN python3 -m pip install cx_Oracle 
RUN apt-get install -y mlocate
RUN apt-get install -y libaio1
RUN apt-get install -y gzip
RUN apt-get install -y zip
RUN apt-get install -y build-essential unzip python-dev libaio-dev
RUN apt-get install -y openjdk-8-jdk
RUN apt-get install -y net-tools
RUN apt-get install -y telnet
RUN apt-get install -y wget
RUN apt-get install -y telnet
RUN apt-get install -y telnet
RUN apt-get install -y telnet
RUN apt-get install -y telnet
RUN apt-get install -y telnet
RUN apt-get install -y telnet
RUN apt-get install -y telnet
RUN echo "ubuntu ALL=(ALL) NOPASSWD: ALL" >>  /etc/sudoers

# Set as default user
USER ubuntu

CMD echo "hello"
CMD tail -f /dev/null
