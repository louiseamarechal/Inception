FROM    debian:buster

RUN     apt-get update

RUN     apt-get upgrade

RUN     apt-get -y install wget
            # apt permet d'effectuer l'installation et la désinstallation de paquets
            # wget est le programme en ligne de commande qui va nous permettre de telecharger des fichiers depuis le Web, on va s'en servir notamment pour telecharger Wordpress

RUN     apt-get install -y php7.3\
		    				php-fpm\
			    			php-mysql\
				    		mariadb-client
            # on utilise apt pour installer php et ses dependances

RUN     wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www
            # on install WordPress grace a wget
            # -P indique dans quel dossier on telecharge le fichier
            # /var/www : on y a indique le dossier principal a afficher dans le container nginx

RUN     cd /var/www && tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz
            # on decompresse notre fichier .tar pour avoir le dossier Wordpress puis on supprime le .tar qui ne nous servira plus

RUN     chown -R root:root /var/www/wordpress
            # on donne les droits a root d'ecrire dans le dossier

COPY    conf/php.ini /etc/php/7.3/cli
