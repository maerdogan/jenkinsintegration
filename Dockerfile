FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install sudo
RUN useradd -ms /bin/bash ubuntu && usermod -aG sudo ubuntu


RUN mkdir -p /u01/apps && mkdir /u01/scripts && mkdir /u01/jdk && mkdir /u01/root-codes && mkdir /u01/setups && mkdir /u01/installedApps
RUN chmod -R 777 /u01

RUN echo "ubuntu ALL=(ALL) NOPASSWD: ALL" >>  /etc/sudoers

# Set as default user
USER ubuntu

CMD echo "hello"
CMD tail -f /dev/null

RUN useradd -ms /bin/bash 1028880000 && usermod -aG sudo 1028880000

