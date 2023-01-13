FROM    debian:buster

RUN   apt update -y

RUN   apt upgrade -y

RUN   apt-get install mariadb-server -y

COPY  conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY  /conf/configure.sh  /var/www/configure.sh

RUN   chmod +x /var/www/configure.sh

ENTRYPOINT [ "/var/www/configure.sh" ]