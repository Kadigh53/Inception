#!/bin/bash

service mysql start

# Create a database
mysql -u root -e "CREATE DATABASE IF NOT EXIST '$DB_NAME';"
mysql -u root -e "CREATE USER IF NOT EXIST '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"
mysql -u root -e "GRANT ALL PREVILIGES ON '$DB_NAME'.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"
# mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ROOT_PASSWORD';"

mysqladmin -u root -p$DB_PASSWORD shutdown

exec mysqld_safe