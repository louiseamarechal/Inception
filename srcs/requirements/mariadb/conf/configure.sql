CREATE DATABASE IF NOT EXISTS `${SQL_DATABASE}`;

CREATE USER IF NOT EXISTS `${SQL_USER}` @localhost IDENTIFIED BY '${SQL_PASSWORD}';

GRANT ALL PRIVILEGES ON `${SQL_DATABASE}`.* TO `${SQL_USER}`@'%' IDENTIFIED BY '${SQL_PASSWORD}';

FLUSH PRIVILEGES;
-- # ALTER USER 'root'@'localhost' IDENTIFIED BY 'root12345';