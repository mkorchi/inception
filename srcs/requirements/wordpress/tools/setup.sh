#!bin/bash

mkdir -p /var/www/html/

CD /var/www/html/

rm -rf *

# wget http://wordpress.org/latest.tar.gz

# tar xfz latest.tar.gz 

# mv wordpress/* ./

# rm -f latest.tar.gz

mv /wp-config.php ./

rm -f /wp-config.php

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

wp core download

mkdir -p /var/www/html/mkorchi.com/

CD /var/www/html/mkorchi.com/

chown -R www-data:www-data /var/www/html/mkorchi.com

wp core install --url=$WP_DOMAINE --title=$WP_TITLE --admin_user=$WP_ADMINUSER --admin_password=$WP_ADMINPASSWORD --admin_email=$WP_ADMINEMAIL --skip-email --allow-root

# wp core install --url=wpcli.co --title=WP-CLI\ \Tutorials --admin_user=admin --admin_password=aqwe123 --admin_email=admin@wpcli.co

wp theme search MyKnowledgeBase

wp theme install MyKnowledgeBase

wp theme activate myknowledgebase

php-fpm7.3 -F
