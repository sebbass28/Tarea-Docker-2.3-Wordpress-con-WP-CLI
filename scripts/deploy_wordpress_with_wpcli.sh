#!/bin/bash
source ./scripts/.env

# Descargar WP-CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

# Descargar WordPress
cd /var/www/html
sudo rm index.html
sudo wp core download --allow-root

# Crear wp-config.php
sudo wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=$DB_HOST --allow-root

# Crear base de datos
sudo mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"

# Instalar WordPress
sudo wp core install --url=$WP_URL --title="$WP_TITLE" --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --allow-root

