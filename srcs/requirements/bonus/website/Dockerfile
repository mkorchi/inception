FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get -y install nginx

COPY ./conf/default /etc/nginx/sites-available/

RUN mkdir -p /var/www/html/website

COPY  ./tools/website /var/www/html/website

CMD [ "nginx", "-g", "daemon off;" ]

EXPOSE 9991