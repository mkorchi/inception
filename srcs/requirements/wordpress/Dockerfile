FROM debian:10

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get -y install php-fpm php-mysql

RUN apt-get -y install wget

# RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

COPY ./conf/wp-config.php /

COPY ./tools/setup.sh /usr/local/bin/

CMD [ "/usr/local/bin/setup.sh" ]

