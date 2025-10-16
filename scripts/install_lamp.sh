#!/bin/bash

# Actualizar paquetes
sudo apt update && sudo apt upgrade -y

# Instalar Apache, MySQL, PHP y extensiones
sudo apt install apache2 mysql-server php php-mysql libapache2-mod-php php-cli unzip curl -y

# Activar Apache
sudo systemctl enable apache2
sudo systemctl start apache2

# Activar MySQL
sudo systemctl enable mysql
sudo systemctl start mysql

