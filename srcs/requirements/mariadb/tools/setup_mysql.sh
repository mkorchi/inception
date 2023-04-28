#!bin/bash

mysql_secure_installation <<EOF
simo
n
y
y
y
y
EOF

mysql -u root -psimo
CREATE DATABASE IF NOT EXISTS mkorchi_db;
ALTER USER 'root'@'localhost' IDENTIFIED BY '12345';
CREATE USER IF NOT EXISTS mkorchi@localhost IDENTIFIED BY 'masakado1';
GRANT ALL ON *.* TO 'mkorchi'@'localhost' IDENTIFIED BY 'masakado1' WITH GRANT OPTION;
FLUSH PRIVILEGES;
exit
mysql -u mkorchi -pmasakado1



