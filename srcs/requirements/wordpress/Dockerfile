FROM        debian:buster

RUN         apt-get update

RUN         apt-get upgrade

RUN         apt-get -y install wget
                # apt permet d'effectuer l'installation et la désinstallation de paquets
                # wget est le programme en ligne de commande qui va nous permettre de telecharger des fichiers depuis le Web, on va s'en servir notamment pour telecharger Wordpress

RUN         apt-get -y install unzip

RUN         apt-get install -y php7.3\
                                php-fpm\
                                php-mysql\
                                mariadb-client
                # on utilise apt pour installer php et ses dependances

COPY        conf/www.conf /etc/php/7.3/fpm/pool.d

RUN         wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
		        # on install WP-CLI : WordPress Command Line Interface (qui va nous permettre de configurer automatiquement WP

RUN         chmod +x wp-cli.phar
		        # on donne les bons droits a WP-CLI

RUN         mv wp-cli.phar /usr/local/bin/wp
		        # on le place dans les binaires

RUN         mkdir -p /var/www/html

RUN         wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
                # on install WordPress grace a wget
                # -P indique dans quel dossier on telecharge le fichier
                # /var/www : on y a indique le dossier principal a afficher dans le container nginx

RUN         cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
                # on decompresse notre fichier .tar pour avoir le dossier Wordpress puis on supprime le .tar qui ne nous servira plus

RUN         chown -R root:root /var/www/wordpress
                # on donne les droits a root d'ecrire dans le dossier

COPY        /conf/auto_config.sh  /tmp/auto_config.sh 
                # on copie notre fichier de config (qui configure automatiquement WP dans notre container)

COPY        /conf/index.html /tmp/index.html

# CMD        [ "sh", "/tmp/auto_config.sh" ]
# ENTRYPOINT  [ "sh", "/tmp/auto_config.sh" ]
                # on demande a notre container d'executer ce fichier