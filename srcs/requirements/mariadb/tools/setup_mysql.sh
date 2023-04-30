#!bin/bash

# mysql_secure_installation <<EOF
# simo
# n
# y
# y
# y
# y
# EOF

mysql
CREATE DATABASE IF NOT EXISTS mkorchi_db;
CREATE USER IF NOT EXISTS mkorchi@localhost IDENTIFIED BY 'masakado1';
ALTER USER 'root'@'localhost' IDENTIFIED BY '12345';
# GRANT ALL ON *.* TO 'mkorchi'@'localhost' IDENTIFIED BY 'masakado1' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON mkorchi_db.* TO 'mkorchi'@'%' ;
FLUSH PRIVILEGES;
exit
# mysql -u mkorchi -pmasakado1
mysqld

