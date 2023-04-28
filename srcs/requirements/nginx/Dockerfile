FROM debian:10

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get -y install nginx

COPY ./conf/default.conf /etc/nginx/sites-available/default.conf

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 443
