# script qui sert a effectuer les commandes au lancement du container WP (pour une configuration automatique cf sujet)

sleep 10 
	# on veut etre sur que MariaDB c'est lance correctement avant de commencer la config WP

if [ -f /var/www/wordpress/wp-config.php ];
then
	echo "wp-config.php already exists baby"
else
	wp config create --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=mariadb:3306 --path=/var/www/wordpress --allow-root
fi

if [ ! -f "/var/www/html/index.html" ];
then
	mv /tmp/index.html /var/www/html/index.html
fi

wp core install --url=lmarecha.42.fr/wordpress \
		--title=Inception \
		--admin_user=$ADMIN_USER \
		--admin_password=$ADMIN_PASSWORD \
		--admin_email==$ADMIN_EMAIL \
		--path=/var/www/wordpress \
		--allow-root

wp user create $USER_NAME $USER_EMAIL \
		--user_pass=$USER_PASSWORD \
		--path=/var/www/wordpress \
	--allow-root

if [ ! -f "/run/php" ]
then
	mkdir /run/php
fi

/usr/sbin/php-fpm7.3 -F