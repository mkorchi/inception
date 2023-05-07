FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get install -y wget php php-mysql

# RUN apt-get -y install adminer nginx 

# RUN sudo chmod 777 /var/www/html -R

RUN wget "http://www.adminer.org/latest.php" -O /var/www/html/index.php 

RUN chown -R www-data:www-data /var/www/html/index.php

# COPY ./conf/default /etc/nginx/sites-available/

RUN chmod 755 /var/www/html/index.php

RUN rm -f /var/www/html/index.html

EXPOSE 5055

WORKDIR /var/www/html

# CMD ["nginx", "-g", "daemon off;"]
CMD ["php", "-S", "0.0.0.0:5055"]