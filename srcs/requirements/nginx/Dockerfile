
FROM	debian:buster

RUN		apt update -y

RUN		apt upgrade -y

RUN		apt install nginx -y

RUN		mkdir -p /etc/nginx/ssl

RUN		apt install openssl -y
			# télécharge l’outil principal pour la gestion/création de certificat TSL-SSL

RUN 	 openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=lmarecha.42.fr/UID=lmarecha"

COPY	conf/default /etc/nginx/sites-available

CMD		[ "nginx", "-g", "daemon off;" ]
			# on lance nginx