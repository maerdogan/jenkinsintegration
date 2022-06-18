FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install sudo
RUN useradd -ms /bin/bash ubuntu && usermod -aG sudo ubuntu


RUN apt-get install -y python3.9
RUN apt-get install -y python3-pip
RUN python3 -m pip install cx_Oracle

RUN echo "ubuntu ALL=(ALL) NOPASSWD: ALL" >>  /etc/sudoers

# Set as default user
USER ubuntu

CMD echo "hello"
CMD tail -f /dev/null
