FROM ubuntu:latest

RUN mkdir -p /u01/apps && mkdir /u01/sqls && mkdir /u01/commands && mkdir /u01/jdk && mkdir /u01/root-codes && mkdir /u01/setups && mkdir /u01/installedApps
RUN chmod -R 777 /u01

RUN echo "ubuntu ALL=(ALL) NOPASSWD: ALL" >>  /etc/sudoers

COPY cmds-sqls/* /u01/sqls 
COPY installations/* /u01/setups
RUN xargs -a installations/ubuntu-libs-reqs.txt apt-get install -y 
RUN rm -rf /var/lib/apt/lists/*
 
 
RUN python3 -m pip install \
  cx_Oracle \
  mysql-client \
  mysql-connector-python \
  pymysql
  

CMD tail -f /dev/null

