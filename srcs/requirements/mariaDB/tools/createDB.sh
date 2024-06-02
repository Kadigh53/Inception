#!/bin/bash

service mariadb start

sleep 5

# mysql << EOF
# FLUSH PRIVILEGES;
# ALTER USER 'root'@'localhost' IDENTIFIED BY '${ROOT_PASSWORD}';
# GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;
# FLUSH PRIVILEGES;
# EOF

mariadb -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME};"
mariadb -e "CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';"
mariadb -e "GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO \`${DB_USER}\`@'%' IDENTIFIED BY '${DB_PASSWORD}';"
# mariadb -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${ROOT_PASSWORD}';"
mariadb -e "FLUSH PRIVILEGES;"

mariadb-admin -u root -p"${ROOT_PASSWORD}" shutdown

exec mariadbd-safe
# --port=3306 --bind-address=0.0.0.0 --datadir='/var/lib/mysql'