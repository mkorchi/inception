#!bin/bash

mkdir -p /var/www/html/

CD /var/www/html/

rm -rf *

mv /wp-config.php ./

rm -f /wp-config.php

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

wp core download

wp core install --url=$WP_DOMAINE --title=$WP_TITLE --admin_user=$WP_ADMINUSER --admin_password=$WP_ADMINPASSWORD --admin_email=$WP_ADMINEMAIL --skip-email --allow-root

# wp user create $WP_USR $WP_USREMAIL --role=author --user_pass=$WP_USRPASS --allow-root # use this if need new user other than admin

# wp core install --url=wpcli.co --title=WP-CLI\ \Tutorials --admin_user=admin --admin_password=aqwe123 --admin_email=admin@wpcli.co

# wp theme search MyKnowledgeBase

wp plugin update --all --allow-root

# --activate will automatically activate the theme after installing it, no need for extra command
wp theme install MyKnowledgeBase --activate --allow-root

/usr/sbin/php-fpm7.3 -F
