FROM        debian:buster

RUN         apt-get update -y

RUN         apt-get upgrade -y

RUN         apt-get -y install wget

RUN         apt-get install -y php7.3\
                                php-fpm\
                                php-mysql\
                                mariadb-client\
                                sendmail

COPY        conf/www.conf /etc/php/7.3/fpm/pool.d

COPY        conf/*  /var/www/

CMD        [ "sh", "/var/www/auto_config.sh" ]