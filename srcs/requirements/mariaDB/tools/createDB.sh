#!/bin/bash

service mariadb start;

# Create a database
mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -u root -e "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"
# mysql -uroot-e "GRANT ALL PRIVILEGES ON '$DB_NAME'.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"
mysql -u root -e "GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO \`${DB_USER}\`@'%' IDENTIFIED BY '${DB_PASSWORD}';"
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_PASSWORD}';"
mysql -u root -e "FLUSH PRIVILEGES;"

mariadb-admin -u root -p$DB_PASSWORD shutdown

exec mariadbd-safe 