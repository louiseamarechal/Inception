FROM    debian:buster

RUN   apt update -y

RUN   apt upgrade -y

RUN   apt-get install mariadb-server -y

# RUN     apt-get install mysql-server -y

COPY  conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
            # on copie notre fichier de config md pour remplacer celui de base

COPY  /conf/configure.sh  /var/www/configure.sh

RUN   bash /var/www/configure.sh
# RUN   service mysql start && var/www/configure.sh
             # on demarre MySQLservice permet de démarrer MySQL avec la commande associée)

# RUN   mysql -e 'CREATE DATABASE IF NOT EXISTS ${SQL_DATABASE};'

# RUN   mysql < /var/www/configure.sql

# RUN   exec mysqld_safe
      # on redemarre mySQL (mysqld_safe -> starts mysqld with some extra safety features )

# COPY    /conf/configure.sh  /etc/mysql/mariadb.conf.d


# CMD   [ "mysqld" ]