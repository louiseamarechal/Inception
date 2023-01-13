FROM        debian:buster

RUN         apt-get update -y

RUN         apt-get upgrade -y

RUN         apt-get -y install wget
                # apt permet d'effectuer l'installation et la désinstallation de paquets
                # wget est le programme en ligne de commande qui va nous permettre de telecharger des fichiers depuis le Web, on va s'en servir notamment pour telecharger Wordpress

RUN         apt-get install -y php7.3\
                                php-fpm\
                                php-mysql\
                                mariadb-client\
                                sendmail
                # on utilise apt pour installer php et ses dependances

COPY        conf/www.conf /etc/php/7.3/fpm/pool.d

COPY        conf/*  /var/www/
# COPY        conf/wp-config.php  /var/www/

CMD        [ "sh", "/var/www/auto_config.sh" ]