FROM ubuntu:latest

RUN mkdir -p /u01/apps && mkdir /u01/sqls && mkdir /u01/commands && mkdir /u01/jdk && mkdir /u01/root-codes && mkdir /u01/setups && mkdir /u01/installedApps
RUN chmod -R 777 /u01

RUN echo "ubuntu ALL=(ALL) NOPASSWD: ALL" >>  /etc/sudoers

COPY cmds-sqls/* /u01/sqls 
COPY installations/* /u01/setups
RUN  apt-get install -y /u01/setups/ubuntu-libs-reqs.txt

CMD tail -f /dev/null

