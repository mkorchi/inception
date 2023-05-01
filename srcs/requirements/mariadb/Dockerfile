FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade 

RUN apt-get -y install curl 

RUN apt-get install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/script.sql /var/www/

EXPOSE 3306

RUN service mysql start && mysql < /var/www/script.sql

CMD ["mysqld"]

# CMD ["/usr/bin/mysqld_safe"]
# CMD [ "/usr/local/bin/setup_mysql.sh" ]
