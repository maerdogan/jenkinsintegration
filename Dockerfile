FROM ubuntu:latest

RUN echo "ubuntu ALL=(ALL) NOPASSWD: ALL" >>  /etc/sudoers
RUN useradd -ms /bin/bash 1028880000 && usermod -aG sudo 1028880000

# Set as default user
USER ubuntu
RUN sudo mkdir /u02

CMD echo "hello"
CMD tail -f /dev/null
