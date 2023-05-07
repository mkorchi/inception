#!bin/bash

mkdir -p /var/www/html

cd /var/www/html/

rm -rf *

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar

mv wp-cli.phar /usr/local/bin/wp

wp core download --allow-root

mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

mv /wp-config.php /var/www/html/wp-config.php

wp core install --url=$WP_DOMAINE --title=$WP_TITLE --admin_user=$WP_ADMINUSER --admin_password=$WP_ADMINPASSWORD --admin_email=$WP_ADMINEMAIL --skip-email --allow-root

wp user create $WP_USR $WP_USREMAIL --role=author --user_pass=$WP_USRPASS --allow-root # use this if need new user other than admin

# --activate will automatically activate the theme after installing it, no need for extra command
wp theme install myknowledgebase --activate --allow-root

wp plugin update --all --allow-root

sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

mkdir -p /run/php

wp plugin install redis-cache --activate --allow-root

wp redis enable --allow-root

exec $@
