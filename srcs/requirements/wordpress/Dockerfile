FROM debian:bullseye-slim 

RUN apt-get update  \
    && apt-get install -y wget \
    && apt-get install -y php7.4 php7.4-fpm php7.4-mysql mariadb-client vim systemd

# Install wordpress needed to understand 
RUN wget https://wordpress.org/latest.tar.gz -P /var/www \
    && cd /var/www && tar -xzvf latest.tar.gz && rm latest.tar.gz

RUN chown -R root:root /var/www/wordpress

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf
