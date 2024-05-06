FROM debian:bellesye

RUN apt-get update  \
    && apt-get install -y wget \
    && apt-get install -y php7 \
    && apt-get install php7-mysql \
    && apt-get install php7-fpm \
    && apt-get install mariadb-client 

# Install wordpress needed to understand 
RUN wget https://wordpress.org/latest.tar.gz -P /var/www \
    && cd /var/www && tar -xzvf latest.tar.gz && rm latest.tar.gz

RUN		chown -R root:root /var/www/wordpress

    # && mv wordpress /var/www/html/wordpress \
    # && chown -R www-data:www-data /var/www/html/wordpress