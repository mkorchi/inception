FROM debian:10

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get -y install curl 

RUN apt-get install -y mariadb-server 

RUN service mysql start

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/setup_mysql.sh /usr/local/bin/

CMD [ "/usr/local/bin/setup_mysql.sh" ]

EXPOSE 3306