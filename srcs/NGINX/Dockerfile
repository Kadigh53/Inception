FROM debian:bullseye-slim 

RUN apt-get update \
    && apt-get install -y nginx openssl curl vim

EXPOSE 443

# COPY ./nginx.conf  /etc/nginx/nginx.conf

# try to run nginx withou daemon mode and check what is going on
CMD ["nginx", "-g", "daemon off;"]
