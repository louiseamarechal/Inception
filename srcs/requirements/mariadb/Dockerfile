FROM    debian:buster

RUN     apt update -y

RUN     apt upgrade -y

RUN     apt-get install mariadb-server -y

# RUN     apt-get install mysql-server -y

COPY    conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
            # on copie notre fichier de config md pour remplacer celui de base

RUN     service mysql start
            # on demarre MySQL (service permet de démarrer MySQL avec la commande associée)

COPY    /conf/configure.sql  /var/www

# RUN     exec mysqld_safe
      # on redemarre mySQL (mysqld_safe -> starts mysqld with some extra safety features )

# COPY    /conf/configure.sh  /etc/mysql/mariadb.conf.d


CMD     [ "mysqld" ]