sleep 10 
	# on veut etre sur que MariaDB c'est lance correctement avant de commencer la config WP

# if [ ! -f "/var/www/wordpress" ]
# then
# 	mkdir /var/www/wordpress
# fi

if [ ! -f "/run/php" ]
then
	mkdir /run/php
	touch /run/php/php7.3-fpm.pid
fi


if [ -f "/var/www/wordpress/wp-config.php" ];
then
	echo "wp-config.php already exists baby"
else
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar
    mv wp-cli.phar /usr/local/bin/wp

	cd /var/www/wordpress

	wp core download --allow-root

	mv /var/www/wp-config.php /var/www/wordpress
	# wp config create --dbname=$SQL_DATABASE --dbuser=$SQL_USER --dbpass=$SQL_PASSWORD --dbhost=mariadb:3306 --path=/var/www/wordpress --allow-root

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

	chown -R www-data /var/www/wordpress
	chmod -R 755 /var/www/wordpress

	chmod 777 /var/www/wordpress/*.php
fi

/usr/sbin/php-fpm7.3 -F