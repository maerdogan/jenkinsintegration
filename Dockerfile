FROM ubuntu:latest

RUN echo "ubuntu ALL=(ALL) NOPASSWD: ALL" >>  /etc/sudoers
RUN useradd -ms /bin/bash ubuntu && usermod -aG sudo ubuntu


# Set as default user
USER ubuntu
RUN sudo mkdir /u02

CMD echo "hello"
CMD tail -f /dev/null
