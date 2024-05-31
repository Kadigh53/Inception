#!/bin/bash

sleep 10
# while ! mysqladmin ping -h"$DB_HOST" --silent; do
#     sleep 1
# done

WP_CONF_FILE="/var/www/wordpress/wp-config.php"
WP_PATH="/var/www/wordpress"

if [ ! -f "$WP_CONF_FILE" ]; then
    wp config create --allow-root \
    --dbname="$DB_NAME" \
    --dbuser="$DB_USER" \
    --dbpass="$DB_PASSWORD" \
    --dbhost="$DB_HOST" \
    --path="$WP_PATH"
fi

# if ! wp user list --allow-root --path="$WP_PATH" | grep -q "$ADMIN_USER" ; then
#     wp user create --allow-root "$ADMIN_USER" "$ADMIN_EMAIL" --role=administrator --user_pass="$ADMIN_PASSWORD" --path="$WP_PATH"
#     wp user create --allow-root "$USER1" "$USER1_EMAIL" --role=author --user_pass="$USER1_PASSWORD" --path="$WP_PATH"
# fi

# sleep 10
# # while ! mysqladmin ping -h"$DB_HOST" --silent; do
# #     sleep 1
# # done

# WP_CONF_FILE="/var/www/wordpress/wp-config.php"


if  wp user list --allow-root --login="$DB_USER" | grep -q "$DB_USER" ; then
    wp user create --allow-root "$ADMIN_USER" "$ADMIN_EMAIL" --role=administrator --user_pass="$ADMIN_PASSWORD"
    wp user create --allow-root "$USER1" "$USER1_EMAIL" --role=author --user_pass="$USER1_PASSWORD"
fi
