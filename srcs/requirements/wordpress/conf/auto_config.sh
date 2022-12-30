# script qui sert a effectuer les commandes au lancement du container WP

sleep 10 
	# on veut etre sur que MariaDB c'est lance correctement avant de commencer la config WP

if [ ! -f wp-config.php ];
then
	wp config create --allow-root \
		--dbname=$SQL_DATABASE \ #set the database name
		--dbuser=$SQL_USER \	 #set the database user
		--dbpass=$SQL_PASSWORD \ #set the database user passwd
		--dbhost=mariadb:3306 --path='/var/www/wordpress'
fi

wp core install --title=Inception \
		--admin_user=$ADMIN_USER \
		--admin_password=$ADMIN_PASSWORD

wp user_create $USER_NAME \
		--user_pass=$USER_PASSWORD