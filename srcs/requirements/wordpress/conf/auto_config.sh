# script qui sert a effectuer les commandes au lancement du container WP (pour une configuration automatique cf sujet)

sleep 10 
	# on veut etre sur que MariaDB c'est lance correctement avant de commencer la config WP

if [ -f /var/www/wordpress/wp-config.php ];
then
	echo "wp-config.php already exists baby"
else
	wp config create --allow-root --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=mariadb:3306 --path='/var/www/wordpress'
fi

wp core install --allow-root --title=Inception \
		--admin_user=$ADMIN_USER \
		--admin_password=$ADMIN_PASSWORD \
		--path='/var/www/wordpress'

wp user create --allow-root $USER_NAME \
		--user_pass=$USER_PASSWORD \
		--path='/var/www/wordpress'