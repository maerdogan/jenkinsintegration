FROM ubuntu:latest

RUN mkdir -p /u01/apps && mkdir /u01/sqls && mkdir /u01/commands && mkdir /u01/jdk && mkdir /u01/root-codes && mkdir /u01/setups && mkdir /u01/installedApps
RUN chmod -R 777 /u01

RUN echo "ubuntu ALL=(ALL) NOPASSWD: ALL" >>  /etc/sudoers

COPY cmds-sqls/* /u01/sqls 
COPY installations/* /u01/setups

RUN apt-get update

RUN xargs -a /u01/setups/ubuntu-libs-reqs.txt apt-get install -y 
RUN rm -rf /var/lib/apt/lists/*
 
RUN python3 -m pip install \
  cx_Oracle \
  mysql-client \
  mysql-connector-python \
  pymysql
 
RUN wget -O /u01/setups/oracle_client_19.8.0.0.0.zip https://download.oracle.com/otn_software/linux/instantclient/19800/instantclient-basic-linux.x64-19.8.0.0.0dbru.zip?xd_co_f=fae07a5a-ae5f-4c1a-8ce0-f41ed4a394c5 

RUN unzip /u01/setups/oracle_client_19.8.0.0.0.zip /u01/installedApps/oracle_client_19.8.0.0.0
CMD tail -f /dev/null

