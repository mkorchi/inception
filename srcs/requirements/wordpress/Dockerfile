FROM debian:10

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get -y install php php-fpm php-mysql

RUN apt-get -y install wget

COPY ./conf/wp-config.php /

COPY ./tools/setup.sh /usr/local/bin/

CMD [ "/usr/local/bin/setup.sh" ]

