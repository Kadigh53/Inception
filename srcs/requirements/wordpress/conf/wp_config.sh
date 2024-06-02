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

if ! wp core is-installed ; then
    # WP is not installed. Let's try installing it.
    wp core install --allow-root \
        --url="$DOMAINE_NAME" \
        --title="Inception" \
        --admin_user="$ADMIN_USER" \
        --admin_password="$ADMIN_PASSWORD" \
        --admin_email="$ADMIN_EMAIL" \
        --skip-email 

        wp user create --allow-root \
        "$USER1" "$USER1_EMAIL" --role=author --user_pass="$USER1_PASSWORD"
fi

php-fpm7.4 -F

# if  wp user list --allow-root --login="$DB_USER" | grep -q "$DB_USER" ; then
#     wp user create --allow-root "$ADMIN_USER" "$ADMIN_EMAIL" --role=administrator --user_pass="$ADMIN_PASSWORD"
    
# fi
