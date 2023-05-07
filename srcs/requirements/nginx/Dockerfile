FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade 

RUN apt-get -y install nginx

COPY ./conf/default /etc/nginx/sites-available/

COPY ./tools/mkorchi.42.fr.crt /etc/ssl/certs/

COPY ./tools/mkorchi.42.fr.key /etc/ssl/private/

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 443
