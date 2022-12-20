
FROM	debian:buster
			# On utilise FROM pour indiquer sur quel OS on veut faire tourner notre machine

RUN		apt update

RUN		apt install nginx -y
			# on precise d'installer nginx au debut, sinon on le perd des qu'on ferme notre container
			# -y permet de preciser 'yes'
			# (apt demande souvent de valider une action mais quand Docker build un container on a pas de prompt)

RUN		mkdir -p /etc/nginx/ssl
			# on veut stocker le certificat et la clef TSL (connexion sécurisée)

RUN		apt install OpenSSL -y
			# télécharge l’outil principal pour la gestion/création de certificat TSL-SSL
