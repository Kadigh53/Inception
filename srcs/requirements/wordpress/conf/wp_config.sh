#!/bin/bash

sleep 10
# while ! mysqladmin ping -h"$DB_HOST" --silent; do
#     sleep 1
# done

WP_CONF_FILE="/var/www/wordpress/wp-config.php"

if [ ! -f $WP_CONF_FILE]; then
    wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=$DB_HOST --path=/var/www/wordpress
fi

if [ wp user list --login=$DB_USER | grep -q $DB_USER ]; then
    wp user create $ADMIN_USER $ADMIN_EMAIL --role=administrator --user_pass=$ADMIN_PASSWORD
    wp user create $USER1 $USER1_EMAIL --role=author --user_pass=$USER1_PASSWORD
fi