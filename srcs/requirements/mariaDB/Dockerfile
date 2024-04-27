FROM debian:bullseye-slim

# Install MariaDB server
RUN apt-get update && apt-get install -y mariadb-server \
    && mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/run/mysqld

# Copy MariaDB configuration files
# COPY mariadb.cnf /etc/mysql/mariadb.conf.d/

# # Environment variables
# ENV MYSQL_ROOT_PASSWORD=pass123
# ENV MYSQL_USER=kadigh
# ENV MYSQL_PASSWORD=pass123

# Expose the MySQL port
EXPOSE 3306

# Start MariaDB service
CMD ["mysqld", "--user=mysql", "--console"]

# RUN apt update -y && apt install -y mariadb-server 
# # && rm /etc/mysql/mariadb.conf.d/50-server.cnf

# # COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

# EXPOSE 3306

# CMD ["mysqld"]

# # ENV MYSQL_ROOT_PASSWORD=pass123