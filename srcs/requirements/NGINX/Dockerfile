FROM debian:bullseye-slim 

RUN apt update \
    && apt install -y nginx openssl curl vim \
    && mkdir -p /etc/nginx/ssl \
    && rm /etc/nginx/nginx.conf \
    && openssl req -x509 -nodes -out /etc/nginx/ssl/kadighsslCertifecate.crt -keyout /etc/nginx/ssl/kadighsslCertifecate.key -subj "/C=MA/ST=KH/L=Khouribga/O=42/OU=42/CN=aaoutem-.42.ma/UID=aaoutem-"

RUN chmod 755 /var/www \
    && chown -R www-data:www-data /var/www

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

# try to run nginx withou daemon mode and check what is going on
CMD ["nginx", "-g", "daemon off;"]
