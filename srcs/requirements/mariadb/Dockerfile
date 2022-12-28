FROM    debian:buster

RUN     apt update -y

RUN     apt upgrade -y

RUN     apt-get install mariadb-server -y

COPY    conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
            # on copie notre fichier de config md pour remplacer celui de base

RUN     service mysql start;
            # on demarre MySQL (service permet de démarrer MySQL avec la commande associée)

RUN     mysql -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
            # creer une table (si elle n'existe pas deja) du nom de la variable d’environnement SQL_DATABASE, indiqué dans mon fichier .env qui sera envoyé par le docker-compose.yml

RUN     mysql -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
            # creer un user avec mdp pour manipuler la table (variable d'environnement a preciser dans .env)

RUN     mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
            # donner tous les droits au user

RUN     mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
            # changer les droits root

RUN     mysql -e "FLUSH PRIVILEGES;"
            # reload pour prendre en comptes les modifs / ajouts

RUN     mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown
            # on eteint MySQL (pour redemarrer avec les nouveaux changements)

RUN     exec mysqld_safe
            # on redemarre mySQL (mysqld_safe -> starts mysqld with some extra safety features )