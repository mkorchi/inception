FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade 

RUN apt-get -y install curl 

RUN apt-get install -y mariadb-server mariadb-client

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/script.sql /var/www/

RUN service mysql start && mysql < /var/www/script.sql;

EXPOSE 3306

CMD ["mysqld"]

# CMD ["/usr/bin/mysqld_safe"]
# CMD [ "/usr/local/bin/setup_mysql.sh" ]
