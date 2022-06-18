FROM ubuntu:latest

RUN echo "ubuntu ALL=(ALL) NOPASSWD: ALL" >>  /etc/sudoers


# Set as default user
USER ubuntu
RUN sudo mkdir /u02

CMD echo "hello"
CMD tail -f /dev/null
