FROM debian:10

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get -y install nginx

COPY ./conf/default /etc/nginx/sites-available/default

COPY ./conf/mkorchi.42.fr.crt /etc/ssl/certs/mkorchi.42.fr.crt

COPY ./conf/mkorchi.42.fr.key /etc/ssl/private/mkorchi.42.fr.key

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 443
