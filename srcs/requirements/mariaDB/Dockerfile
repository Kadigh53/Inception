FROM debian:bullseye-slim

# todo: understand chown -R mysql:mysql /var/run/mysqld

RUN apt-get update && apt-get install -y mariadb-server \
    && mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld \
    && rm -f /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/createDB.sh /usr/local/bin/

ENV DB_NAME=KadighDB
ENV DB_USER=kadigh
ENV DB_PASSWORD=pass123

EXPOSE 3306

CMD ["/usr/local/bin/createDB.sh"]

# RUN chnod +x /usr/local/bin/createDB.sh