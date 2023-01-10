
FROM	debian:buster
			# On utilise FROM pour indiquer sur quel OS on veut faire tourner notre machine

RUN		apt update

RUN		apt install nginx -y
			# on precise d'installer nginx au debut, sinon on le perd des qu'on ferme notre container
			# -y permet de preciser 'yes'
			# (apt demande souvent de valider une action mais quand Docker build un container on a pas de prompt)

RUN		mkdir -p /etc/nginx/ssl
			# on veut stocker le certificat et la clef TSL (connexion sécurisée)

RUN		apt install openssl -y
			# télécharge l’outil principal pour la gestion/création de certificat TSL-SSL

RUN 	 openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=lmarecha.42.fr/UID=lmarecha"
			# la commande permet de generer cle et certificat SSL au demarrage du container :
				# la commande req crée des certificats auto-signés -> on ajoute -x509 pour préciser le type du certificat.
				# quand on cre notre certificat OpenSSL va vouloir un mdp mais comme on a pas acces a un prompt on ajoute le mot cle -nodes pour creer une cle sans mdp
				# on utilise -out et -keyout pour lui dire ou stocker le certif et la cle
				# on ajoute -subj pour eviter la encore de se faire avoir par un prompt inexistant -> ca permer de pre-remplir des infos pour le certif

RUN 	mkdir -p /var/run/nginx
			# on cre un fichier pour y stocker nos fichiers de config nginx

COPY	conf/nginx.conf /etc/nginx/nginx.conf
			# on copie notre fichier de config nginx pour remplacer celui de base

RUN		chmod +x /var/www/html 
			# notre root principal

RUN		chown -R www-data:www-data /var/www/html
			# l’utilisateur principal

CMD		[ "nginx", "-g", "daemon off;" ]
			# on lance nginx