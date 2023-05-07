FROM debian:buster

RUN apt -y update && apt -y upgrade && apt-get -y update && apt-get -y upgrade

RUN apt-get -y install php-fpm php-mysql && apt install curl -y

COPY ./conf/wp-config.php /wp-config.php

COPY ./tools/setup.sh /

EXPOSE 9000

ENTRYPOINT [ "bash", "/setup.sh" ]

CMD ["php-fpm7.3", "-F"]
