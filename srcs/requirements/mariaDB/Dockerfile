FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server \
    && mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld \
    && rm -f /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./tools/createDB.sh /usr/local/bin/

EXPOSE 3306

CMD ["bash", "/usr/local/bin/createDB.sh"]
