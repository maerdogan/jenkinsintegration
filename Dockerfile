FROM ubuntu:latest

CMD apt-get -y install sudo
RUN useradd -ms /bin/bash ubuntu && usermod -aG sudo ubuntu

CMD apt-get install -y python
CMD apt-get install -y python3-pip
CMD apt install cron
CMD python3 -m pip install cx_Oracle 
CMD apt-get install -y mlocate
CMD apt-get install -y libaio1
CMD apt-get install -y gzip
CMD apt-get install -y zip
CMD apt-get install -y build-essential unzip python-dev libaio-dev
CMD apt-get install -y openjdk-8-jdk
CMD apt-get install -y net-tools
CMD apt-get install -y telnet
CMD apt-get install -y wget

RUN echo "ubuntu ALL=(ALL) NOPASSWD: ALL" >>  /etc/sudoers

# Set as default user
USER ubuntu

CMD echo "hello"
CMD tail -f /dev/null
